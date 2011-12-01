package LolCatalyst::Lite::Model::Translator;
use strict;
use warnings;
use base 'Catalyst::Model::Adaptor';

=head1 NAME

LolCatalyst::Lite::Model::Translator - Catalyst Model

=head1 DESCRIPTION

Catalyst Model Interface.

=cut

__PACKAGE__->config(
  class => 'LolCatalyst::Lite::Translator',
  args => {},
);

=head1 AUTHOR

chakkrit,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut


1;
