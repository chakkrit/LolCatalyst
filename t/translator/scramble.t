use strict;
use warnings;
use Test::More tests => 2;
use LolCatalyst::Lite::Translator;

ok( (my $tr = LolCatalyst::Lite::Translator->new), 'Constructed translator object ok');

my $input = 'hello world';
my $scrambled = $tr->translate_to('Scramble', $input);

like($scrambled, qr/h...o w...d/, 'text matches first/last');
