package QVD::DB::Result::Host_Property;
use base qw/DBIx::Class/;

__PACKAGE__->load_components(qw/Core/);
__PACKAGE__->table('host_properties');
__PACKAGE__->add_columns( host_id => { data_type => 'integer' },
                          property_id     => { data_type => 'integer' },
                          value   => { data_type => 'varchar(32768)' } );

__PACKAGE__->set_primary_key('host_id', 'property_id');
__PACKAGE__->belongs_to(host => 'QVD::DB::Result::Host', 'host_id');
__PACKAGE__->belongs_to(qvd_properties_list => 'QVD::DB::Result::QVD_Object_Property_List', 'property_id');

sub key
{
    my $self = shift;
    return $self->qvd_properties_list->key;
}

sub tenant_id
{
    my $self = shift;
    return $self->qvd_properties_list->tenant_id;
}

1;
