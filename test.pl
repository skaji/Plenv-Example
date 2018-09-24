#!/usr/bin/env perl
use strict;
use warnings;
use 5.10.1;

use Cwd 'abs_path';
use File::Basename 'dirname', 'basename';

sub run {
    say "---> @_";
    system @_;
}

run "find", "/usr/local/Cellar/perl-build/HEAD-92222db", "-type", "f";
run "cat", "/usr/local/Cellar/perl-build/HEAD-92222db/libexec/bin/plenv-install";
