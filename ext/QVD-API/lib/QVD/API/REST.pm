package QVD::API::REST;
use strict;
use warnings;
use Moo;
use QVD::API;
use QVD::API::REST::Request;
use QVD::API::REST::Response;
use QVD::API::REST::Model;
use QVD::API::REST::JSON;
use QVD::API::Exception;
use QVD::API::Action;
use TryCatch;
use Mojo::Pg;
use QVD::Config;
use QVD::API::LogReport;
use Mojo::JSON qw(encode_json);
use base qw(Mojolicious::Plugin); # QVD::API::REST is a Mojolicious plugin

# This class is the general manager of the API. 
# It takes the query received by the Mojolicious::Lite app,
# checks that the query is right and send it to same function in QVD::API.
# After that, it receives the answer of that function and returns it to the
# Mojo app.

has 'administrator', is => 'ro', isa => sub { die "Invalid type for attribute administrator" 
						  unless ref(+shift) eq 'QVD::DB::Result::Administrator'; };
my $QVD_ADMIN;

sub BUILD
{
    my $self = shift;
    $QVD_ADMIN = QVD::API->new();
}

# This function is used to register qvd_admin4_api
# as a helper in the Mojolicious::Lite app. That helper
# is an accessor to this class.

sub register
{ 
    my ($self,$app) = @_;
    $app->helper(qvd_admin4_api => sub { $self });
}

sub _db { $QVD_ADMIN->_db; };

sub qvd_api { return $QVD_ADMIN; };

##########################################################
## FUNCTIONS TO VALIDATE USERS (administrators, really) ##
##########################################################
# These functions are user directly from the Mojolicious app
# (wat.pl) in order lo login and manage sessions.

# This function receives some credentials and tries to 
# get from the database the administrator related to those credentials.
# The credentials provided can be any filter available in the API for 
# administrators (i.e. id), though typically name and password are used.

sub validate_user
{
    my ($self,%params) = @_;
    my $multitenant = cfg('wat.multitenant');

	if ((not defined $params{id}) && $multitenant && (not defined $params{tenant})) {
		return undef;
	}

    $params{password} = $self->password_to_token($params{password}) if defined $params{password};
    $params{name} = delete $params{login} if defined $params{login};
	$params{tenant_id} = eval {
		$QVD_ADMIN->_db->resultset('Tenant')->search(
			{ name => delete $params{tenant} }
		)->first->id
	} if exists $params{tenant};

    my $rs = eval { $QVD_ADMIN->_db->resultset('Administrator')->search(\%params) };
    print $@ if $@;
    
	# This grep forbides login for superadmins in monotenant context

    my @admins = grep { $multitenant || $_->is_recovery_admin || 
			    (not $_->is_superadmin) } $rs->all;
    return undef unless @admins;

    my $admin = shift @admins;
    die "More than one administrators found for these credentials" if @admins;
    return $admin;
}

# This method takes an administrator id and tries
# to authenticate it. After that, it sets that admin
# as the current administrator in the system.  
# That will be a crucial info for many operations

# validate_user was intended to authentication (getting an admin
# from credentials). However, load_user is intended to setting
# the current admin in the system

sub load_user
{
    my ($self,$admin) = @_;

    $admin = $self->validate_user(id => $admin) 
	unless ref($admin);

    $self->{administrator} = $admin;

    # This is the scope (set of tenants) 
    # in which the admin is able to operate
    if ($admin->is_superadmin) {
        $admin->set_tenants_scope( [
            grep { $_ != QVD::DB::Result::Tenant::COMMON_TENANT_ID }
                map { $_->id } $QVD_ADMIN->_db->resultset('Tenant')->search()->all
        ] );
    } else {
        $admin->set_tenants_scope( [$admin->tenant_id] );
    }

}

########################################
## MAIN METHOD TO PROCESS API QUERIES ##
########################################

sub process_query
{
   my ($self,$json) = @_;
   my ($response,$json_wrapper,$action,$qvd_object_model);
    
    # Creates an action related to the input query
    # with all the info in the system for that action
    
    $json_wrapper = QVD::API::REST::JSON->new(json => $json);
    
    $action = QVD::API::Action->new(name => $json_wrapper->action);
    
    $qvd_object_model = $self->get_qvd_object_model($action) if $action->qvd_object;
    
    # Checks if the asked action is available for the current admin
    
    QVD::API::Exception->throw(code => 4210)
        unless $action->available_for_admin($self->administrator);

    # Gets the method that must be executed in order to execute the
    # requested action
    
    my $restmethod = $action->restmethod;
    
    # Executes that method and builds the answer
    
    my $result = $self->$restmethod($action,$json_wrapper,$qvd_object_model);
    
    my %args = (
        status => 0,
        data => $result
    );
    $args{json_wrapper} = $json_wrapper;
    $args{qvd_object_model} = $qvd_object_model
        if $qvd_object_model;
    $args{administrator} = $self->administrator;
    
    $response = QVD::API::REST::Response->new(%args);

    $response->json;
}

# Method to execute QVD::API methods with a QVD::API::REST::Request
# object as argument

sub process_standard_query
{
    my ($self,$action,$json_wrapper,$qvd_object_model) = @_;
    my $admin4method = $action->admin4method;
    my $result = $QVD_ADMIN->$admin4method($self->get_request($json_wrapper,$qvd_object_model));
}

# Method to execute QVD::API methods with a QVD::API::REST::JSON
# object as argument

sub process_ad_hoc_query
{
    my ($self,$action,$json_wrapper) = @_;
    my $admin4method = $action->admin4method;
    my $result = $QVD_ADMIN->$admin4method($self->administrator,$json_wrapper);
}

# Method to execute multiple QVD::API methods
# for the same requested action

sub process_multiple_query
{
    my ($self,$action,$json_wrapper) = @_;

    my @admin4methods = $action->admin4methods;
    my $result = {};

    for my $method (@admin4methods)
    {
	next unless $action->available_nested_action_for_admin($self->administrator,$method);
	$result->{$method} = $QVD_ADMIN->$method($self->administrator,$json_wrapper);
    }
    
    $result;
}

sub get_qvd_object_model 
{ 
    my ($self, $action) = @_;

    QVD::API::REST::Model->new(current_qvd_administrator => $self->administrator,
				  qvd_object => $action->qvd_object,
				  type_of_action => $action->type);
}

sub get_request 
{ 
    my ($self, $json_wrapper,$qvd_object_model) = @_;

    my $request = eval { QVD::API::REST::Request->new(qvd_object_model => $qvd_object_model, 
							 json_wrapper => $json_wrapper) };

    my $e = $@ ? QVD::API::Exception->new(exception => $@) : undef;

    QVD::API::LogReport->new(

	action => { action => $json_wrapper->action,
		    type_of_action => $qvd_object_model->type_of_action_log_style },
	qvd_object => $qvd_object_model->qvd_object_log_style,
	tenant => $self->administrator->tenant,
	object => undef,
	administrator => $self->administrator,
	ip => $json_wrapper->get_parameter_value('remote_address'),
	source => $json_wrapper->get_parameter_value('source'),
	arguments => {},
	status => $e->code 
	
	)->report if $e;
    
    $e->throw if $e;

    return $request; 
}

##########################################
## OTHER METHODS USED FROM THE MOJO APP ##
##########################################

# Reports what channels of the database should be listened
# for a specific action in order to know when sth. has been changed
# Useful for monitorization via websocket

sub get_channels
{
   my ($self,$action_name) = @_;

   QVD::API::Action->new(name => $action_name )->channels;
}


# Provides a pool to the database in order to listen events
# from the mojo app

sub pool
{
    my $self = shift;

    unless(defined($self->{pg_db})){
        my $host     = cfg('database.host');
        my $dbname   = cfg('database.name');
        my $user     = cfg('database.user');
        my $password = cfg('database.password');
        my $pg = Mojo::Pg->new("postgresql://${user}:${password}\@${host}/${dbname}");

        $self->{pg_db} = $pg;
    }

    return $self->{pg_db}->pubsub;
}

# Gives access to the configuration tokens to the mojo app

sub _cfg
{
    my $self = shift;
    return cfg(@_);
}

# Returns db version to the mojo app 

sub database_version
{
    my $self = shift;
    my $version = eval { 
	$QVD_ADMIN->_db->resultset('Version')->search(
	    { component => 'schema' })->first->version
    } // undef;
}

# The same function is in QVD::API::REST::Model !!! FIX ME
# We wanna this in the sama place

sub password_to_token 
{
    my ($self, $password) = @_;
    require Digest::SHA;
    Digest::SHA::sha256_base64(cfg('l7r.auth.plugin.default.salt') . $password);
}

1;

