#!/usr/bin/env perl

use strict;
use warnings;

use Data::List::Item;

my $list_item = Data::List::Item->new(
        'description' => 'List item',
        'id' => 1,
);

# Print out.
print 'Id: '.$list_item->id."\n";
print 'Description: '.$list_item->description."\n";

# Output:
# Id: 1
# Description: List item