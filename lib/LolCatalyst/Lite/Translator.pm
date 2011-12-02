package LolCatalyst::Lite::Translator;
use warnings;
use strict;
use Moose;
use namespace::autoclean;
use LolCatalyst::Lite::Translator::LOLCAT;

=head1 NAME

LolCatalyst::Lite::Translate - Independent Model

=head1 DESCRIPTION

Independent Model for Text translation

=head2 translate

Return Some texts when traslate method get text input

=cut

has 'default_target' => (
  is => 'ro', isa => 'Str', required => 1, default => 'LOLCAT'
);

has 'translators' => (
  is => 'ro', isa => 'HashRef', lazy_build => 1
);

sub _build_translators {
  my ($self) = @_;
  return { LOLCAT => LolCatalyst::Lite::Translator::LOLCAT->new };
}

sub translate {
  my ($self, $text) = @_;
  $self->translate_to($self->default_target, $text);
}

sub translate_to {
  my ($self, $target, $text) = @_;
  $self->translators->{$target}->translate($text);
}

__PACKAGE__->meta->make_immutable;

1;
