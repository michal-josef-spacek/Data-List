use strict;
use warnings;

use Data::List::Item;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::List::Item::VERSION, 0.01, 'Version.');
