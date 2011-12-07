package LolCatalyst::Lite::Controller::Root;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use Const::Fast;

BEGIN { extends 'Catalyst::Controller' }
#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config(namespace => '');

=head1 NAME

LolCatalyst::Lite::Controller::Root - Root Controller for LolCatalyst::Lite

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=head2 index

The root page (/)

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    #$c->response->body( $c->welcome_message );
}

=head2 default

Standard default page

=cut

sub default :Path {
    my ( $self, $c ) = @_;
    $c->detach('/error_404');
}
=head2 error_404

Code 404 error page 

=cut

sub error_404 :Private {
  const my $PAGE_NOTFOUND => 404;
  my ( $self, $c ) = @_;
  $c->response->status($PAGE_NOTFOUND);
  $c->response->body( 'Page not found' );
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {
  const my $INTERNAL_SERVER_ERROR => 500;
  my ($self, $c) = @_;
  my $errors = scalar @{$c->error};
  if ($errors && !$c->debug) {
    $c->log->error("Errors in ${\$c->action}:");
    $c->log->error($_) for @{$c->error};
    $c->res->status($INTERNAL_SERVER_ERROR);
    $c->res->body('internal server error');
    $c->clear_errors;
  }
}

=head2 translate

the Translate page ( /translate )

=cut

sub translate : Private {
  my ($self, $c) = @_;
  my $lol = $c->req->body_params->{lol};
  $c->stash(
    lol => $lol,
    result => $c->model('Translator')->translate($lol),
    template => 'index.tt',
  );
}

=head2 translate_service

the Translate web service

=cut

sub translate_service : Local {
  my ($self, $c) = @_;
  $c->forward('translate');
  $c->stash->{current_view} = 'Service';
}

=head2 auto

User authentication

=cut

sub auto : Private {
  my ($self, $c) = @_;
  $c->authenticate;
}

=head1 AUTHOR

chakkrit,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
