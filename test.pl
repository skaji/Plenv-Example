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

run "cat", "/usr/local/bin/perl-build";
run "cat", "/usr/local/bin/plenv-install";
my $dir = dirname abs_path "/usr/local/bin/perl-build";
run "find", $dir, "-type", "f";
