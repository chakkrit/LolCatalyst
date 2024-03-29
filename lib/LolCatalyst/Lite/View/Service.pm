package LolCatalyst::Lite::View::Service;
use warnings;
use strict;
use base 'Catalyst::View::JSON';

=head1 NAME

LolCatalyst::Lite::View::Service - Catalyst JSON View

=head1 SYNOPSIS

See L<LolCatalyst::Lite>

=head1 DESCRIPTION

Catalyst JSON View.

=cut

__PACKAGE__->config({expose_stash => [qw/lol result/]});

=head1 AUTHOR

chakkrit,,,

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
