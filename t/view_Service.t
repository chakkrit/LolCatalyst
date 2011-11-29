use strict;
use warnings;
use Test::More;

BEGIN { $ENV{LOLCATALYST_LITE_CONFIG_LOCAL_SUFFIX}="testing" }
BEGIN { use_ok 'LolCatalyst::Lite::View::Service' }

done_testing();
