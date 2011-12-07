package LolCatalyst::Lite::SnippetStore;

use warnings;
use strict;
use Moose;
use aliased 'LolCatalyst::Lite::Snippet';
use namespace::autoclean;

has '_snippets' => (is => 'ro', default => sub{ [] });
has '_translator' => (
  is => 'ro',
  required => 1,
  init_arg => 'translator',
);

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
  my $snippet = Snippet->new(
    %$new,
    id => (@{$self->_snippets} +1),
    translator => $self->_translator
  );
  push(@{$self->_snippets}, $snippet);
  return $snippet;
}

__PACKAGE__->meta->make_immutable;
1;
