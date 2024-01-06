package Data::List;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils qw(check_array_object check_length check_number);

our $VERSION = 0.01;

has description => (
	is => 'ro',
);

has items => (
	is => 'ro',
	default => [],
);

has id => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check description.
	check_length($self, 'description', 255);

	# Check items.
	check_array_object($self, 'items', 'Data::List::Item', 'Item');

	# Check id.
	check_number($self, 'id');

	return;
}

1;
