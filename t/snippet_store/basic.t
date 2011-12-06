use strict;
use warnings;
use Test::More tests => 7;

use_ok "LolCatalyst::Lite::SnippetStore";

my $store = LolCatalyst::Lite::SnippetStore->new;

my $num_snips = 3;

ok((my @snip = map $store->create({ text => "snippet $_"}), 1 .. $num_snips), 'Creates ok');

cmp_ok(scalar(@snip), '==', $num_snips, "$num_snips created");

is_deeply(\@snip, [ $store->all ], 'deep snippet check');

foreach my $snip (@snip) {
  my $id = $snip->{id};
  is($snip->{text}, $store->find($id)->{text}, "find by id $id ok");
}
