use strict;
use warnings;
use Test::More tests => 2;
use LolCatalyst::Lite::Translator;

ok(
  (my $tr = LolCatalyst::Lite::Translator->new), 'Constructed translator object ok'
);

like(
  $tr->translate('Can i have a cheese burger?'), qr/CHEEZ/, 'String translated ok'
);
