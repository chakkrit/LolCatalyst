package LolCatalyst::Lite::Translator;
use warnings;
use strict;
use Moose;
use Acme::LOLCAT ();
use namespace::autoclean;

=head1 NAME

LolCatalyst::Lite::Translate - Independent Model

=head1 DESCRIPTION

Independent Model for Text translation

=head2 translate

Return Some texts when traslate method get text input

=cut

sub translate {
  my ($self, $text) = @_;
  return Acme::LOLCAT::translate($text);
}

__PACKAGE__->meta->make_immutable;

1;
