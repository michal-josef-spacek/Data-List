use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Data::List::Item',
	{ 'also_private' => ['BUILD'] },
	'Data::List::Item is covered.');
