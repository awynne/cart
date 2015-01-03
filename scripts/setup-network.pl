#!/usr/bin/perl -w

use strict;

my $homeDir = $ENV{"HOME"};
my $cartDir = "$homeDir/cart";
my $networkFile = "$cartDir/raspbian/interfaces.pi";

print "network file: $networkFile\n";

