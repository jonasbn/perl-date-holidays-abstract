package Date::Holidays::Abstract;

# $Id: Abstract.pm 1339 2004-05-23 15:56:17Z jonasbn $

use strict;
use vars qw($VERSION);
use base qw(Class::Virtually::Abstract);

$VERSION = '0.01';

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

Date::Holidays uses the requirements defined by this module and this
module can therefor be used with success in conjunction with this.

This is an alternative to making a super class. I have considered
programming a super class, but since create a super class for a bunch
of modules implementing handling of national holidays, an abstract
class seemed a better choice.

A super class for Date::Holidays, could implement is_holiday and
holidays and expect these to be overloaded. Overloading would be
necessary since nothing intelligent can be said about holidays without
specifying a nationality (a part from holidays being nice but too few),
and the implemented methods would be empty bodies returning empty
result sets.

So I am more for an abstract class and as stated I consider this class
an experiment and I am still considering implementing Date::Holidays::Super.

Suggestions for changes to this or extensions are more than welcome.

=head1 SEE ALSO

=over

=item Date::Holidays

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

Jonas B. Nielsen, (jonasbn) - E<lt>jonasbn@cpan.orgE<gt>

=head1 COPYRIGHT

Date-Holidays-Abstract is (C) by Jonas B. Nielsen, (jonasbn) 2004

Date-Holidays-Abstract is released under the Artistic License
See <http://www.perl.com/language/misc/Artistic.html> for details.

=cut
