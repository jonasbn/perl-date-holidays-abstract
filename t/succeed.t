#!/usr/bin/env perl

use strict;
use warnings;

use FindBin qw($Bin);
use lib ("$Bin/../t", 't');

use Test::More tests => 1;

use lib qw(t);

use_ok('Example::Abstraction');
