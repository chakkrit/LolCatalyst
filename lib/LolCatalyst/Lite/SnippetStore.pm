package LolCatalyst::Lite::SnippetStore;

use warnings;
use strict;
use Moose;
use namespace::autoclean;

has '_snippets' => (is => 'ro', default => sub{ [] });

sub find {
  my ($self, $id) = @_;
  return $self -> _snippets->[$id - 1];
}

sub all {
  my ($self) = @_;
  return @{$self->_snippets};
}

sub create {
  my ($self, $new) = @_;
  $new->{id} = @{$self->_snippets} + 1;
  push(@{$self->_snippets}, $new);
  return $new;
}

__PACKAGE__->meta->make_immutable;
1;
