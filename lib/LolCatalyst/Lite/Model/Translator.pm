package LolCatalyst::Lite::Model::Translator;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use Acme::LOLCAT ();

extends 'Catalyst::Model';

=head1 NAME

LolCatalyst::Lite::Model::Translator - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.

=head2 translate

Return Some texts when traslate method get text input

=cut

sub translate {
  my ($self, $text) = @_;
  return Acme::LOLCAT::translate($text);
}

=head1 AUTHOR

chakkrit,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
