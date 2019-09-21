[![CPAN version](https://badge.fury.io/pl/Date-Holidays-Abstract.svg)](http://badge.fury.io/pl/Date-Holidays-Abstract)
[![Build Status](https://travis-ci.org/jonasbn/perl-date-holidays-abstract.svg?branch=master)](https://travis-ci.org/jonasbn/perl-date-holidays-abstract)
[![Coverage Status](https://coveralls.io/repos/github/jonasbn/perl-date-holidays-abstract/badge.svg)](https://coveralls.io/github/jonasbn/perl-date-holidays-abstract)

# NAME

Date::Holidays::Abstract - abstract class for Date::Holidays::\* packages

# SYNOPSIS

    package Date::Holidays::NN;
    use base qw(Date::Holidays::Abstract);

    sub holidays {
    ...
    }

    sub is_holiday {
    ...
    }

# VERSION

The documentation describes the lastest release of Date::Holidays::Abstract

# DESCRIPTION

This module is an abstract class intended for Date::Holidays::\*

The goal is to have all the existing and future modules implement the
same methods, so they will have a uniform usage and can be used in
polymorphic context or can be easily adapted into the Date::Holidays
class.

If you want to use Date::Holidays::Abstract and want to comply with my
suggestions to the methods that ought to be implemented, you should
implement:

- **is\_holiday**
- **holidays**

## is\_holiday

Should at least take 3 arguments:

- year, four digits
- month, between 1-12
- day, between 1-31

The return value from is holiday is either a 1 or 0 indicating true of
false, indicating whether the specified date is a holiday in the given
country's national calendar.

Additional arguments are at the courtesy of the author of the using
module/class.

## holidays

Should at least take one argument:

- year, four digits

Returns a reference to a hash, where the keys are date represented as
four digits. The two first representing month (01-12) and the last two
representing day (01-31).

The value for the key in question is the local name for the holiday
indicated by the day. The resultset will of course vary depending on
the given country's national holiday.

Additional arguments are at the courtesy of the author of the using
module/class.

\--

[Date::Holidays](https://metacpan.org/pod/Date::Holidays) uses the requirements defined by this module and this
module can therefore be used with success in conjunction with this.

This is an alternative to a SUPER class. I have given a lot of thought to
programming a SUPER class, but since creating a super class for a bunch
of modules implementing handling of national holidays, an abstract
class seemed a better choice.

A proposed SUPER class for Date::Holidays::\* is however implemented see:
[Date::Holidays::Super](https://metacpan.org/pod/Date::Holidays::Super) implement **is\_holiday** and **holidays** and expect
these to be overloaded.

Overloading would be necessary since nothing intelligent can be said
about holidays without specifying a nationality (a part from holidays
being nice but too few), and the implemented methods would be empty
bodies returning empty result sets.

So I am more for an abstract class and as stated I consider this class
an experiment and I have implemented [Date::Holidays::Super](https://metacpan.org/pod/Date::Holidays::Super) as an
alternative.

Suggestions for changes and extensions are more than welcome.

# SUBROUTINES/METHODS

This class does not implement any methods, it is an abstract class.

# DIAGNOSTICS

This class does not implement any exceptions or error, it is an abstract class.

# CONFIGURATION AND ENVIRONMENT

This class does not implement or require any special environment or
configuration apart from what is mentioned in DEPENDENCIES

# DEPENDENCIES

This class is subclassed from [Class::Virtually::Abstract](https://metacpan.org/pod/Class::Virtually::Abstract), but holds
no direct dependencies apart from that class/module.

# INCOMPATIBILITIES

No known to the author

# BUGS AND LIMITATIONS

No, to the author, known bugs. lease see GitHub for a more precise status.

- [https://github.com/jonasbn/perl-date-holidays-abstract/issues](https://github.com/jonasbn/perl-date-holidays-abstract/issues)

Only known limitations are:

- Requirement for Perl 5.6 for use
- Requirement for Perl 5.14 for development

# SEE ALSO

- [Date::Holidays](https://metacpan.org/pod/Date::Holidays)
- [Date::Holidays::Super](https://metacpan.org/pod/Date::Holidays::Super)
- [Date::Holidays::DE](https://metacpan.org/pod/Date::Holidays::DE)
- [Date::Holidays::DK](https://metacpan.org/pod/Date::Holidays::DK)
- [Date::Holidays::FR](https://metacpan.org/pod/Date::Holidays::FR)
- [Date::Holidays::UK](https://metacpan.org/pod/Date::Holidays::UK)
- [Date::Holiday::PT](https://metacpan.org/pod/Date::Holiday::PT)
- [Date::Japanese::Holiday](https://metacpan.org/pod/Date::Japanese::Holiday)
- [Class::Virtual](https://metacpan.org/pod/Class::Virtual)
- [Class::Virtually::Abstract](https://metacpan.org/pod/Class::Virtually::Abstract)

# BUGS

Please report issues via GitHub at:

- [https://github.com/jonasbn/perl-date-holidays-abstract/issues](https://github.com/jonasbn/perl-date-holidays-abstract/issues)

And follow the bug reporting guidelines available at:

- [https://github.com/jonasbn/perl-date-holidays-abstract/blob/master/CONTRIBUTING.md](https://github.com/jonasbn/perl-date-holidays-abstract/blob/master/CONTRIBUTING.md)

# TEST/COVERAGE

This distribution is currently at 100% test coverage

Please see [Coveralls](https://coveralls.io/github/jonasbn/perl-date-holidays-abstract)

# DEVELOPMENT

If you want to contribute to this distribution please consult the contribution guidelines and code of conduct for this project

- [Contribution Guidelines](https://github.com/jonasbn/perl-date-holidays-abstract/blob/master/CONTRIBUTING.md)
- [Contributor Covenant Code of Conduct](https://github.com/jonasbn/perl-date-holidays-abstract/blob/master/CODE_OF_CONDUCT.md)

The distribution relies heavily on [Dist::Zilla](https://metacpan.org/pod/Dist::Zilla), but can be developed without using [Dist::Zilla](https://metacpan.org/pod/Dist::Zilla), but it is recommended.

# AUTHOR

Jonas B, (jonasbn) - `<jonasbn@cpan.org>`

# ACKNOWLEDGEMENTS

- Mohammad S Anwar (GitHub: @manwar, CPAN: MANWAR) for PR resulting in release 0.10
- Olaf Alders (GitHub: @oalders, CPAN: OALDERS) for bug report resulting in release 0.08
- Ricardo Signes (GitHub: @rjbs, CPAN: RJBS) for tip resulting in release 0.03

# LICENSE AND COPYRIGHT

Date-Holidays-Abstract is (C) by Jonas B. (jonasbn) 2004-2019

Date-Holidays-Abstract is released under the Artistic License 2.0
