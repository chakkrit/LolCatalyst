package LolCatalyst::Lite::Translator::LOLCAT;
use warnings;
use strict;
use Moose;
use Acme::LOLCAT();
use namespace::autoclean;

sub translate {
  my ($self, $text) = @_;
  return Acme::LOLCAT::translate($text);
}

__PACKAGE__->meta->make_immutable;
1;
