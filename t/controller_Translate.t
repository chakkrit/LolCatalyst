use strict;
use warnings;
use Test::More tests => 15;
use HTTP::Request::Common;
use HTTP::Headers;
BEGIN { $ENV{LOLCATALYST_LITE_CONFIG_LOCAL_SUFFIX}="testing" }
BEGIN {use_ok 'Catalyst::Test', 'LolCatalyst::Lite'}

my ($request, $response);

$request = POST(
           'http://localhost/translate',
           'Content-Type' => 'form-data',
           'Content' => [ 'lol' => 'Can i have a cheese burger?',]
           );
$request->headers->authorization_basic('fred', 'wilma');
ok($response = request($request), 'Request');
ok($response->is_success, 'Response Successful 2xx');
is($response->content_type, 'text/html', 'Response Content-Type');
like($response->content, qr/CHEEZ/, "contians translated string");


$request = GET('http://localhost/translate/1');
$request->headers->authorization_basic('fred', 'wilma');
ok($response = request($request),'Request for default translation type');
ok( $response->is_success, 'Response Successful 2xx');
like($response->content, qr/CHEEZ/, "Contains translated string");

$request = GET('http://localhost/translate/100');
$request->headers->authorization_basic('fred', 'wilma');
ok($response = request($request),'Request for default translation type on non-existent object');
cmp_ok($response->code, '==', 404, '404 error returned');

$request = GET('http://localhost/translate/1/to/LOLCAT');
$request->headers->authorization_basic('fred', 'wilma');
ok($response = request($request), 'Request for specific translation type');
ok( $response->is_success, 'Response Successful 2xx');
like($response->content, qr/CHEEZ/, "Contains translated string");

$request = GET('http://localhost/translate/1/to/NONEXISTENT');
$request->headers->authorization_basic('fred', 'wilma');
ok($response = request($request),'Request for non-existent translation type');
cmp_ok($response->code, '==', 404, '404 error returned');


