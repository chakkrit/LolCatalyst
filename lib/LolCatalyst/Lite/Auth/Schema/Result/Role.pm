use utf8;
package LolCatalyst::Lite::Auth::Schema::Result::Role;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

LolCatalyst::Lite::Auth::Schema::Result::Role

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::EncodedColumn>

=back

=cut

__PACKAGE__->load_components("EncodedColumn");

=head1 TABLE: C<role>

=cut

__PACKAGE__->table("role");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 role

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "role",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<role_unique>

=over 4

=item * L</role>

=back

=cut

__PACKAGE__->add_unique_constraint("role_unique", ["role"]);

=head1 RELATIONS

=head2 user_roles

Type: has_many

Related object: L<LolCatalyst::Lite::Auth::Schema::Result::UserRole>

=cut

__PACKAGE__->has_many(
  "user_roles",
  "LolCatalyst::Lite::Auth::Schema::Result::UserRole",
  { "foreign.roleid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07012 @ 2011-11-28 17:43:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BMkcWPDQdTwAdMOG3TSpJA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
