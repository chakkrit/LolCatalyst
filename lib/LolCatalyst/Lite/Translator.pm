package LolCatalyst::Lite::Translator;
use warnings;
use strict;
use Moose;
use namespace::autoclean;
#use LolCatalyst::Lite::Translator::LOLCAT;
use Module::Pluggable::Object;

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
  #return { LOLCAT => LolCatalyst::Lite::Translator::LOLCAT->new };
  my $base = __PACKAGE__;
  my $mp = Module::Pluggable::Object->new(
    search_path => [$base]
  );
  my @classes = $mp->plugins;
  my %translators;
  foreach my $class (@classes) {
    Class::MOP::load_class($class);
    (my $name = $class) =~ s/^\Q${base}::\E//;
    $translators{$name} = $class->new;
  }
  return \%translators;
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
