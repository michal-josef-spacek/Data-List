package Data::List::Item;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_length check_number check_required);

our $VERSION = 0.01;

has description => (
	is => 'ro',
);

has id => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check description.
	check_required($self, 'description');
	check_length($self, 'description', 255);

	# Check id.
	check_number($self, 'id');

	return;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

Data::List::Item - Data object for budget item.

=head1 SYNOPSIS

 use Data::List::Item;

 my $obj = Data::List::Item->new(%params);
 my $description = $obj->description;
 my $id = $obj->id;

=head1 METHODS

=head2 C<new>

 my $obj = Data::Budget::Person->new(%params);

Constructor.

Returns instance of object.

=over 8

=item * C<id>

Id of person.
It's number.
It's optional.
Default value is undef.

=back

=head2 C<description>

 my $description = $obj->description;

Get description.

Returns string.

=head2 C<id>

 my $id = $obj->id;

Get person id.

Returns number.

=head1 ERRORS

 new():
         Parameter 'description' has length greater than '255'.
                 Value: %s
         Parameter 'id' must a number.
                 Value: %s

=head1 EXAMPLE

=for comment filename=create_list_item_and_print.pl

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

=head1 DEPENDENCIES

L<Mo>,
L<Mo::utils>.

=head1 REPOSITORY

L<https://github.com/michal-josef-spacek/Data-List>

=head1 AUTHOR

Michal Josef Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

© 2024 Michal Josef Špaček

BSD 2-Clause License

=head1 VERSION

0.01

=cut
