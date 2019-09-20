#!/usr/bin/env perl

use strict;
use warnings;

use FindBin qw($Bin);
use lib ("$Bin/../t", 't');

use Test::More tests => 1;
use Test::Fatal qw(dies_ok);

local $@; # protect existing $@
eval "use Example::Abstractionless";

diag("Diagnostics: ",  $@);

like($@, qr/Class Example::Abstractionless must define is_holiday, holidays for class Date::Holidays::Abstract at/, 'abstraction not implemented, you should observe a compilation error');
