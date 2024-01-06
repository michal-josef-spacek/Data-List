use strict;
use warnings;

use Data::List;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::List::VERSION, 0.01, 'Version.');
