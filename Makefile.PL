# Makefile.PL for Date-Holidays-Abstract

# $Id: Makefile.PL 1306 2004-05-13 10:59:01Z jonasbn $

use ExtUtils::MakeMaker;

WriteMakefile(
	'AUTHOR'        => 'Jonas B. Nielsen, (jonasbn) jonasbn@cpan.org',
    'NAME'	        => 'Date::Holidays::Abstract',
    'VERSION_FROM'  => 'lib/Date/Holidays/Abstract.pm', # finds $VERSION
	'PREREQ_PM' => {
		'Test::More'          => 0,
		'Test::Pod'           => '0.95',
		'Test::Pod::Coverage' => '0.08',
		'File::Find'          => 0,
		'File::Spec'          => 0,
		'Class::Virtual'      => 0,
	}
);
