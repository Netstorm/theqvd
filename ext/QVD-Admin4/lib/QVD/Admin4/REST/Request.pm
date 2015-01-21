package QVD::Admin4::REST::Request;
use strict;
use warnings;
use Moo;
use QVD::Admin4::Exception;
use QVD::Admin4::DBConfigProvider;

has 'json_wrapper', is => 'ro', isa => sub { die "Invalid type for attribute json_wrapper" 
						 unless ref(+shift) eq 'QVD::Admin4::REST::JSON'; }, required => 1;
has 'qvd_object_model', is => 'ro', isa => sub { die "Invalid type for attribute qvd_object_model" 
						     unless ref(+shift) eq 'QVD::Admin4::REST::Model'; } , required => 1;
has 'modifiers', is => 'ro', isa => sub { die "Invalid type for attribute modifiers" 
					      unless ref(+shift) eq 'HASH'; }, 
                             default => sub { { distinct => 1, join => [], order_by => { '-asc' => []}  }};
has 'filters', is => 'ro', isa => sub { die "Invalid type for attribute failures" 
					    unless ref(+shift) eq 'HASH'; }, default => sub { {}; };
has 'parameters', is => 'ro', isa => sub { die "Invalid type for attribute parameters" 
					    unless ref(+shift) eq 'HASH'; }, default => sub { {}; };
has 'arguments', is => 'ro', isa => sub { die "Invalid type for attribute arguments" 
					      unless ref(+shift) eq 'HASH'; }, default => sub { {}; };
has 'related_objects_arguments', is => 'ro', isa => sub { die "Invalid type for attribute related_objects_arguments" 
							      unless ref(+shift) eq 'HASH'; }, default => sub { {}; };
has 'nested_queries', is => 'ro', isa => sub { die "Invalid type for attribute nested_queries" 
						   unless ref(+shift) eq 'HASH'; }, default => sub { {}; };

has 'related_views', is => 'ro', isa => sub { die "Invalid type for attribute related_views" 
						   unless ref(+shift) eq 'ARRAY'; }, default => sub { []; };

my $ADMIN;
my $DBConfigProvider;
my $LOGICAL_OPERATORS = { -and => 1,  -or => 1 };

sub BUILD 
{
    my $self = shift;

    $ADMIN = $self->qvd_object_model->current_qvd_administrator;
    $DBConfigProvider = QVD::Admin4::DBConfigProvider->new();

    $self->hide_recovery_mode_administrator
	if $self->qvd_object_model->qvd_object eq 'Administrator';

    $self->forze_filtering_by_tenant;

    $self->forze_filtering_by_own_admin
	if $self->json_wrapper->action eq 'myadmin_update';

    $self->forze_filtering_tenants_by_tenant
        if $self->qvd_object_model->qvd_object eq 'Tenant';
    $self->forze_tenant_assignment_in_creation
	if $self->qvd_object_model->type_of_action eq 'create';
    $self->switch_custom_properties_json2request;

    $self->forze_default_version_in_json_for_di if
	($self->qvd_object_model->qvd_object eq 'DI' &&
	$self->qvd_object_model->type_of_action eq 'create' &&
	 not $self->json_wrapper->has_argument('version'));

    $self->check_acls_for_deleting if
	$self->qvd_object_model->type_of_action eq 'delete';
    $self->check_filters_validity_in_json;
    $self->check_update_arguments_validity_in_json if
	$self->qvd_object_model->type_of_action eq 'update';
    $self->check_create_arguments_validity_in_json if
	$self->qvd_object_model->type_of_action eq 'create';
    $self->check_nested_queries_validity_in_json if
	$self->qvd_object_model->type_of_action =~ /^(cre|upd)ate$/;
    $self->check_order_by_validity_in_json;

    $self->set_parameters_in_request;
    $self->set_pagination_in_request;
    $self->set_filters_in_request;
    $self->set_arguments_in_request;
    $self->set_nested_queries_in_request;
    $self->set_related_views_in_request;
    $self->set_order_by_in_request;
    $self->set_tables_to_join_in_request;
}


sub hide_recovery_mode_administrator
{
    my $self = shift;

    my $ids = $self->json_wrapper->has_filter('id') ?
	$self->json_wrapper->get_filter_value('id') : [];
    $ids = [$ids] unless ref($ids);

    my $sql = 'NOT IN (0)';
    my $key = @$ids ? '-and' : 'me.id';
    my $value = @$ids ? ['me.id' => \$sql, 'me.id' => $ids ] : \$sql;
    $self->set_filter($key,$value);
}

sub forze_default_version_in_json_for_di
{ 
    my $self = shift;

    my $osf_id = $self->json_wrapper->get_argument_value('osf_id') // return;

    my ($y, $m, $d) = (localtime)[5, 4, 3]; $m ++; $y += 1900;
    my $osf = $DBConfigProvider->db->resultset('OSF')->search({id => $osf_id})->first;

    QVD::Admin4::Exception->throw(code => 7100, object => 'osf_id') unless $osf; 

    my $version;

    for (0..999) 
    {
	$version = sprintf("%04d-%02d-%02d-%03d", $y, $m, $d, $_);
	last unless $osf->di_by_tag($version);
    }
    
    $self->json_wrapper->forze_argument_addition('version',$version);
}

sub fields
{
    my $self = shift;
    $self->json_wrapper->fields;
}

sub get_parameter_value
{
    my ($self,$p) = @_;
    $self->parameters->{$p};
}

sub set_parameter
{
    my ($self,$k,$v) = @_;
    $self->parameters->{$k} = $v;
}

sub action 
{
    my $self = shift;
    $self->json_wrapper->action;
}

sub table 
{
    my $self = shift;
    $self->qvd_object_model->qvd_object;
}

sub dependencies
{
    my $self = shift;
    $self->qvd_object_model->dbix_has_one_relationships;
}

sub set_filter
{
    my ($self,$key,$val) = @_;
    $val = undef if defined $val && $val eq '';
    $key = undef if defined $key && $key eq '';

    if (exists $LOGICAL_OPERATORS->{$key})
    {
	$self->add_term_to_logical_filter(
	    $key,$val);
    }
    else
    {
	$self->filters->{$key} = $val;
    }
}

sub add_term_to_logical_filter
{
    my ($self,$operator,$val) = @_;

    my $list = $self->filters->{$operator} // [];
    push @$list, @$val;
    $self->filters->{$operator} = $list;
}

sub set_nested_query
{
    my ($self,$nq,$val) = @_;
    $val = undef if defined $val && $val eq '';
    $nq = undef if defined $nq && $nq eq '';
    $self->nested_queries->{$nq} = $val;
}

sub add_to_related_views
{
    my ($self,$key) = @_;
    push @{$self->related_views}, $key;
}

sub set_argument
{
    my ($self,$key,$val) = @_;
    $val = undef if defined $val && $val eq '';
    $key = undef if defined $key && $key eq '';
    $self->arguments->{$key} = $val;
}

sub set_related_object_argument
{
    my ($self,$rel_object,$key,$val) = @_;
    $self->related_objects_arguments->{$rel_object}->{$key} = $val;
}

sub add_to_join
{
    my ($self,$key) = @_;
    push @{$self->modifiers->{join}}, $key;
}

sub add_to_prefetch
{
    my ($self,$key) = @_;
    push @{$self->modifiers->{prefetch}}, $key;
}

sub add_to_order_by
{
    my ($self,$key) = @_;
    my $order_criteria = $self->modifiers->{order_by}->{'-desc'} //
	$self->modifiers->{order_by}->{'-asc'};
    push @$order_criteria, $key;
}

sub set_pagination_in_request
{
    my $self = shift;
    $self->modifiers->{page} = $self->json_wrapper->offset // 1; 
    $self->modifiers->{rows}  = $self->json_wrapper->block // 10000; 
}

sub forze_filtering_by_own_admin
{
    my $self = shift;

    $self->json_wrapper->forze_filter_addition('id',$ADMIN->id)
	unless defined $self->json_wrapper->get_filter_value('id');
    
    QVD::Admin4::Exception->throw(code => 6320, object => 'id')
	unless $self->json_wrapper->get_filter_value('id') eq $ADMIN->id; 
}

sub forze_filtering_by_tenant
{
    my $self = shift;

    return unless $self->qvd_object_model->available_filter('tenant_id');
    if ($self->json_wrapper->has_filter('tenant_id'))
    {
	QVD::Admin4::Exception->throw(code => 4220, object => 'tenant_id') 
	    unless $ADMIN->is_superadmin;
    }
    else
    {
	$self->json_wrapper->forze_filter_addition('tenant_id',$ADMIN->tenants_scoop);
    }
}

sub forze_filtering_tenants_by_tenant
{
    my $self = shift;

    return unless $self->qvd_object_model->available_filter('id');
    my %scoop = map { $_ => 1 } @{$ADMIN->tenants_scoop};
    my $ids = $self->json_wrapper->has_filter('id') ?
	$self->json_wrapper->get_filter_value('id') :
	$ADMIN->tenants_scoop;
    $ids = [$ids] unless ref($ids);
    my @ids = grep { exists $scoop{$_} } @$ids;

    @ids = grep { $_ ne 0 } @ids if 
	$self->qvd_object_model->type_of_action =~ /^delete|list$/;

    $self->json_wrapper->forze_filter_deletion('id')
	if $self->json_wrapper->has_filter('id');
    
    $self->json_wrapper->forze_filter_addition(
	'id',\@ids);
}

sub forze_tenant_assignment_in_creation
{
    my $self = shift;
	
    return if $ADMIN->is_superadmin; # It must be provided in the input
    return unless $self->qvd_object_model->mandatory_argument('tenant_id');
    $self->json_wrapper->forze_argument_addition('tenant_id',$ADMIN->tenant_id);
}

sub switch_custom_properties_json2request
{
    my $self = shift;
    my @custom_properties_keys = 
	$self->qvd_object_model->custom_properties_keys;

    my $found_properties = 0;
    my $admin = $self->qvd_object_model->current_qvd_administrator;

    for my $property_key (@custom_properties_keys)
    {
	next unless $self->json_wrapper->has_filter($property_key);

	$admin->re_is_allowed_to($self->qvd_object_model->get_acls_for_filter('properties')) # PROVISIONAL
	    || QVD::Admin4::Exception->throw(code => 4220, object => 'properties');

	$found_properties++;
	my $property_value = $self->json_wrapper->get_filter_value($property_key);
	$property_value = { ILIKE => "%".$property_value."%"};
	my $property_dbix_key = $found_properties > 1 ?
	    "properties_$found_properties" : 'properties';
	$self->json_wrapper->forze_filter_deletion($property_key);
        $self->set_filter($property_dbix_key.".key",$property_key);
        $self->set_filter($property_dbix_key.".value",$property_value);
        $self->add_to_join('properties');
    }
}

sub check_filters_validity_in_json
{
    my $self = shift;

    $self->qvd_object_model->available_filter($_) || 
	QVD::Admin4::Exception->throw(code => 6210, object => $_)
	for $self->json_wrapper->filters_list;

    my $admin = $self->qvd_object_model->current_qvd_administrator;

    $admin->re_is_allowed_to($self->qvd_object_model->get_acls_for_filter($_)) || 
	QVD::Admin4::Exception->throw(code => 4220, object => $_)
	for $self->json_wrapper->filters_list;

    $self->json_wrapper->has_filter($_) ||
	QVD::Admin4::Exception->throw(code => 6220, object => $_)
	for $self->qvd_object_model->mandatory_filters;
}


sub check_acls_for_deleting
{
    my $self = shift;
    my $id = $self->json_wrapper->get_filter_value('id');
    return unless ref($id) && scalar @$id > 1;

    my $admin = $self->qvd_object_model->current_qvd_administrator;
    $admin->re_is_allowed_to($self->qvd_object_model->get_acls_for_delete_massive) 
	|| QVD::Admin4::Exception->throw(code => 4240);
}


sub check_update_arguments_validity_in_json
{
    my $self = shift;
    my $admin = $self->qvd_object_model->current_qvd_administrator;

    $self->qvd_object_model->available_argument($_) || 
	QVD::Admin4::Exception->throw(code => 6230, object => $_)
	for $self->json_wrapper->arguments_list;

    my $id = $self->json_wrapper->get_filter_value('id');
    my ($method,$code) = ref($id) && scalar @$id > 1 ? 
	('get_acls_for_argument_in_massive_update',4240) : 
	('get_acls_for_argument_in_update',4230) ;

    $admin->re_is_allowed_to($self->qvd_object_model->$method($_)) || 
	QVD::Admin4::Exception->throw(code => $code, object => $_) 
	for $self->json_wrapper->arguments_list
}

sub check_create_arguments_validity_in_json
{
    my $self = shift;
    my $admin = $self->qvd_object_model->current_qvd_administrator;

    $self->json_wrapper->has_argument($_) || 
	defined $self->qvd_object_model->get_default_argument_value($_) ||
	QVD::Admin4::Exception->throw(code => 6240 , object => $_)
	for $self->qvd_object_model->mandatory_arguments;
    
    $admin->re_is_allowed_to($self->qvd_object_model->get_acls_for_argument_in_creation($_)) || 
	QVD::Admin4::Exception->throw(code => 4230, object => $_)
	for $self->json_wrapper->arguments_list;
}

sub check_nested_queries_validity_in_json
{
    my $self = shift;
    my $admin = $self->qvd_object_model->current_qvd_administrator;
    my $type_of_action = $self->qvd_object_model->type_of_action;
    my ($method,$code);

    if ($type_of_action eq 'create')
    {
	$method = 'get_acls_for_nested_query_in_creation';
    }
    elsif ($type_of_action eq 'update')
    {
	my $id = $self->json_wrapper->get_filter_value('id');
	($method,$code) = ref($id) && scalar @$id > 1 ? 
	    ('get_acls_for_nested_query_in_massive_update',4240) : 
	    ('get_acls_for_nested_query_in_update',4230) ;
    }

    $self->qvd_object_model->available_nested_query($_) || 
	QVD::Admin4::Exception->throw(code => 34, object => $_)
	for $self->json_wrapper->nested_queries_list;

    $admin->re_is_allowed_to($self->qvd_object_model->$method($_)) || 
	QVD::Admin4::Exception->throw(code => $code, object => $_) 
	for $self->json_wrapper->nested_queries_list
}

sub check_order_by_validity_in_json
{
    my $self = shift;
}

############################################################
############################################################
### MAPPING OF FILTERS WITH SUPPORT TO LOGICAL OPERATORS ###
############################################################
############################################################


sub set_filters_in_request
{
    my $self = shift;
    my $filters = $self->json_wrapper->filters;

    while (my ($key,$value) = each %$filters)
    {
	my ($key_dbix_format,$value_normalized);
	if (exists $LOGICAL_OPERATORS->{$key})
	{
	    ($key_dbix_format,$value_normalized) = 
		($key,$self->map_logical_operator_filter_value($value));
	}
	else
	{
	    ($key_dbix_format,$value_normalized) = $self->map_key_value_filter($key,$value);
	}
	$self->set_filter($key_dbix_format,$value_normalized);
    }
}

sub map_logical_operator_filter_value
{
    my ($self,$filters) = @_;  
    my $position = 0;
    my ($key,$value,$out);
    my $odd = sub { my $n = shift; return $n % 2; };
    my $set_value = sub { $value = shift; };
    my $set_key = sub { ($key,$value) = (shift,undef); };

    for my $item (@$filters)
    {
	$odd->($position++) ? 
	    $set_value->($item) : $set_key->($item);

	if (defined $value)
	{
	    if (exists $LOGICAL_OPERATORS->{$key})
	    {
		$value = $self->map_logical_operator_filter_value($value);
		push @$out, ($key,$value);
	    }
	    else
	    {
		push @$out, $self->map_key_value_filter($key,$value);
	    }
	}
    }
    return $out;
}


sub map_key_value_filter
{
    my ($self,$key,$value) = @_;

    my $key_dbix_format = 
	$self->qvd_object_model->map_filter_to_dbix_format($key);

    my $value_normalized = $self->qvd_object_model->normalize_value($key,$value);

    if ($self->qvd_object_model->subchain_filter($key))
    {
	$value_normalized = { ILIKE => "%".$value_normalized."%"};
    }
    elsif ($self->qvd_object_model->commodin_filter($key))
    {
	$value_normalized = { ILIKE => $value_normalized }; 
    }
    return ($key_dbix_format,$value_normalized);
}


######################
######################
######################

sub set_parameters_in_request
{
    my $self = shift;
    for my $key ($self->json_wrapper->parameters_list)
    {
	my $value = $self->json_wrapper->get_parameter_value($key);
	$self->set_parameter($key,$value);
    }
    $self->set_parameter('administrator',$ADMIN);
}


sub set_arguments_in_request
{
    my $self = shift;
    for my $key ($self->json_wrapper->arguments_list)
    {
	my $key_dbix_format = 
	    $self->qvd_object_model->map_argument_to_dbix_format($key);
	my $value = $self->json_wrapper->get_argument_value($key);
	my $value_normalized = $self->qvd_object_model->normalize_value($key,$value);
	$self->instantiate_argument($key_dbix_format,$value_normalized);
    }
    $self->set_arguments_in_request_with_defaults if 
	$self->qvd_object_model->type_of_action eq 'create';
}


sub set_arguments_in_request_with_defaults
{
    my $self = shift;

    for my $key ($self->qvd_object_model->mandatory_arguments)
    {
	next if $self->json_wrapper->has_argument($key);

	my $key_dbix_format = 
	    $self->qvd_object_model->map_argument_to_dbix_format($key);
	my $value = $self->qvd_object_model->get_default_argument_value($key);
	$self->instantiate_argument($key_dbix_format,$value);
    }
}

sub instantiate_argument
{
    my ($self,$dbix_key,$value) = @_;
    $value = undef if defined $value && $value eq '';
    # WARNING: Is this the right solution to all fields??

    my ($table,$column) = $dbix_key =~ /^(.+)\.(.+)$/;

    $table eq 'me'                                            ?
    $self->set_argument($column,$value)                       :
    $self->set_related_object_argument($table,$column,$value);
}


sub set_order_by_in_request
{
    my $self = shift;

    my $order_direction = $self->json_wrapper->order_direction // '-asc';
    my $order_criteria = $self->json_wrapper->order_criteria;
    $order_criteria = [$self->qvd_object_model->default_order_criteria] 
	unless  @$order_criteria;

    $self->modifiers->{order_by}->{'-desc'} =
	delete $self->modifiers->{order_by}->{'-asc'}
    if $order_direction eq '-desc';

    for my $order_criterium (@$order_criteria)
    {
	$self->add_to_order_by(
	    $self->qvd_object_model->map_order_criteria_to_dbix_format($order_criterium));
    }
}

sub set_nested_queries_in_request
{
    my $self = shift;

    for my $nq ($self->json_wrapper->nested_queries_list)
    {
	my $admin4method = 
	    $self->qvd_object_model->map_nested_query_to_admin4($nq);
	my $value = $self->json_wrapper->get_nested_query_value($nq);

	$self->set_nested_query($admin4method,$value);
    }
}

sub set_tables_to_join_in_request
{
    my $self = shift;
    $self->add_to_join($_) 
	for @{$self->qvd_object_model->dbix_join_value};

    $self->add_to_prefetch($_) 
	for @{$self->qvd_object_model->dbix_prefetch_value};
}

sub set_related_views_in_request
{
    my $self = shift;

    $self->add_to_related_views($_) 
	for $self->qvd_object_model->related_views_in_db;
}

sub related_view
{
    my $self = shift;
    $self->qvd_object_model->related_view;
}


1;
