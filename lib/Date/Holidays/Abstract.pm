package Date::Holidays::Abstract;

# $Id: Abstract.pm 1371 2004-05-31 07:47:04Z jonasbn $

use strict;
use vars qw($VERSION);
use base qw(Class::Virtually::Abstract);

$VERSION = '0.03';

__PACKAGE__->virtual_methods(qw(is_holiday holidays));

1;

__END__

=head1 NAME

Date::Holidays::Abstract - an abstract class for Date::Holidays::* modules

=head1 SYNOPSIS

	package Date::Holidays::NN;
	use base qw(Date::Holidays::Abstract);
	
	sub holidays {
	...
	}
	
	sub is_holiday {
	...
	}

=head1 ABSTRACT

This module is an abstract class intended for Date::Holidays::*

The goal is to have all the existing and future modules implement the
same methods, so they will have a uniform usage and can be used in
polymorphic context or can be easily adapted into the Date::Holidays
class.

=head1 DESCRIPTION

If you want to use Date::Holidays::Abstract and want to comply with my
suggestions to the methods that ought to be implemented, you should
implement:

=over

=item is_holiday

=item holidays

=back

=head2 is_holiday

Should at least take 3 arguments:

=over

=item year, four digits

=item month, between 1-12

=item day, between 1-31

=back

The return value from is holiday is either a 1 or 0 indicating true of
false, indicating whether the specified date is a holiday in the given
country's national calendar.

Additional arguments are at the courtesy of the author of the using
module/class.

=head2 holidays

Should at least take one argument:

=over

=item year, four digits

=back

Returns a reference to a hash, where the keys are date represented as
four digits. The two first representing month (01-12) and the last two
representing day (01-31).

The value for the key in question is the local name for the holiday
indicated by the day. The resultset will of course vary depending on
the given country's national holiday. 

Additional arguments are at the courtesy of the author of the using
module/class.

--

L<Date::Holidays> uses the requirements defined by this module and this
module can therefor be used with success in conjunction with this.

This is an alternative to a SUPER class. I have given a lot of thought to
programming a SUPER class, but since creating a super class for a bunch
of modules implementing handling of national holidays, an abstract
class seemed a better choice.

A proposed SUPER class for Date::Holidays::*: L<Date::Holidays::Super>
should implement B<is_holiday> and B<holidays> and expect these to be
overloaded. 

Overloading would be necessary since nothing intelligent can be said
about holidays without specifying a nationality (a part from holidays
being nice but too few), and the implemented methods would be empty
bodies returning empty result sets.

So I am more for an abstract class and as stated I consider this class
an experiment and I have implemented L<Date::Holidays::Super> as an
alternative.

Suggestions for changes and extensions are more than welcome.

=head1 SEE ALSO

=over

=item Date::Holidays

=item Date::Holidays::Super

=item Date::Holidays::DE

=item Date::Holidays::DK

=item Date::Holidays::FR

=item Date::Holidays::UK

=item Date::Holiday::PT

=item Date::Japanese::Holiday

=item Class:Virtual

=back

=head1 BUGS

Please report issues via CPAN RT:

  http://rt.cpan.org/NoAuth/Bugs.html?Dist=Date-Holidays-Abstract

or by sending mail to

  bug-Date-Holidays-Abstract@rt.cpan.org

=head1 AUTHOR

Jonas B. Nielsen, (jonasbn) - C<< <jonasbn@cpan.org> >>

=head1 COPYRIGHT

Date-Holidays-Abstract is (C) by Jonas B. Nielsen, (jonasbn) 2004

Date-Holidays-Abstract is released under the Artistic License
See: (http://www.perl.com/language/misc/Artistic.html) for details.

=cut
