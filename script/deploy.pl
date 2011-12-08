use strict;
use warnings;
use lib::LolCatalyst::Lite::Auth::Schema;
use FindBin qw($Bin);
use lib "$Bin/../lib";

my $newdb_type = shift;
my $newdb_name = shift;
my $newdb_user = shift;
my $newdb_pass = shift;

my $schema = LolCatalyst::Lite::Auth::Schema->connect("dbi:${newdb_type}:${newdb_name}", $newdb_user, $newdb_pass);
$schema->deploy();
