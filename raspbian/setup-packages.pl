#!/usr/bin/perl -w

use strict;

my $piPkgs = "vim git wget oracle-java8-jdk";
my $packages = $piPkgs;

my $update   = "sudo apt-get update";
my $upgrade  = "sudo apt-get -y upgrade";
my $install  = "sudo apt-get -y install $packages";

runCmd($update , "updating packages");
runCmd($upgrade, "upgrading packages");
runCmd($install, "installing packages");

sub runCmd {
    (my $cmd, my $what) = @_;
    print "\n$what: $cmd\n\n";
    system($cmd);
}
