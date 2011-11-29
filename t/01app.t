#!/usr/bin/env perl
use strict;
use warnings;
use Test::More tests => 13;

BEGIN { use_ok 'Catalyst::Test', 'LolCatalyst::Lite'}
use HTTP::Headers;
use HTTP::Request::Common;

# GET request

my $request = GET('http://localhost');
my $response = request($request);
ok( $response = request($request), 'Basic request to start page' );
ok( $response->is_success, 'Start page request successful 2xx' );
is( $response->content_type, 'text/html', 'HTML Content-Type');
like( $response->content, qr/Translate/, "Contains the word Translate");

#test request to translate

$request = POST(
  'http://localhost/translate',
  'Content-Type' => 'form-data',
  'Content' => [
    'lol' => 'Can i have a cheese burger?',
  ]
);
$request->headers->authorization_basic('fred', 'wilma');
$response = undef;
ok( $response = request($request), 'Request to return translation' );
ok( $response->is_success, 'Translation request successful 2xx' );
is( $response->content_type, 'text/html', 'HTML content type' );
like( $response->content, qr/CHEEZ/, "Contains a correct translation snippet" );

#test request to translate_service

$request = POST(
  'http://localhost/translate_service',
  'Content-Type' => 'form-data',
  'Content' => [
    'lol' => 'Can i have a cheese burger?',
  ]
);
$request->headers->authorization_basic('fred', 'wilma');
ok( $response = request($request), 'Request to return JSON' );
ok( $response->is_success, 'Translation request successful 2xx' );
is( $response->content_type, 'application/json', 'JSON content type' );
like( $response->content, qr/CHEEZ/, "Contains translated string" );

done_testing();
