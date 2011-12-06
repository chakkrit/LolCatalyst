package LolCatalyst::Lite::Translator::Driver::LOLCAT;
use warnings;
use strict;
use Moose;
use Acme::LOLCAT();
use namespace::autoclean;

sub translate {
  my ($self, $text) = @_;
  return Acme::LOLCAT::translate($text);
}

with 'LolCatalyst::Lite::Interface::TranslationDriver';

__PACKAGE__->meta->make_immutable;
1;
