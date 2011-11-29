use strict;
use warnings;
use Test::More;

BEGIN { $ENV{LOLCATALYST_LITE_CONFIG_LOCAL_SUFFIX}="testing" }
BEGIN { use_ok 'LolCatalyst::Lite::View::Web' }

done_testing();
