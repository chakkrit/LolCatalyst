use utf8;
package LolCatalyst::Lite::Auth::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

LolCatalyst::Lite::Auth::Schema::Result::User

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

=head1 TABLE: C<user>

=cut

__PACKAGE__->table("user");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 username

  data_type: 'text'
  is_nullable: 1

=head2 email

  data_type: 'text'
  is_nullable: 1

=head2 password

  data_type: 'text'
  is_nullable: 1

=head2 status

  data_type: 'text'
  is_nullable: 1

=head2 role_text

  data_type: 'text'
  is_nullable: 1

=head2 session_data

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "username",
  { data_type => "text", is_nullable => 1 },
  "email",
  { data_type => "text", is_nullable => 1 },
  "password",
  { data_type => "text", is_nullable => 1 },
  "status",
  { data_type => "text", is_nullable => 1 },
  "role_text",
  { data_type => "text", is_nullable => 1 },
  "session_data",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<username_unique>

=over 4

=item * L</username>

=back

=cut

__PACKAGE__->add_unique_constraint("username_unique", ["username"]);

=head1 RELATIONS

=head2 user_roles

Type: has_many

Related object: L<LolCatalyst::Lite::Auth::Schema::Result::UserRole>

=cut

__PACKAGE__->has_many(
  "user_roles",
  "LolCatalyst::Lite::Auth::Schema::Result::UserRole",
  { "foreign.user" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07012 @ 2011-11-28 17:43:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fVD5v3WX11NeYpx+bi+g7g



      __PACKAGE__->add_columns(
        'password' => {
          data_type     => 'CHAR',
          size          => 40,
          encode_column => 1,
          encode_class  => 'Digest',
          encode_args   => {algorithm => 'SHA-1', format => 'hex'},
      });

1;
