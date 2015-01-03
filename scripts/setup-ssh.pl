#!/usr/bin/perl -w

use strict;

my $homeDir = $ENV{"HOME"};
my $cartDir = "$homeDir/cart";

my $keyGen = "ssh-keygen";
print "generating keys with: $keyGen\n";
`$keyGen`;

my $pubKey = "$cartDir/phil_rsa.pub";
my $destFile = "$homeDir/.ssh/authorized_keys";
my $cmd = "cat $pubKey > $destFile";
print "coping public key: $cmd\n";
system($cmd);

