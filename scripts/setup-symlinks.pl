#!/usr/bin/perl -w

use strict;

my $homeDir = $ENV{"HOME"};
my $cartDir = "$homeDir/dev/git-repos/cart";
my @dotFiles = (".myrc", ".vimrc", ".vim");

if (-e $cartDir) { 
    print "cart directory already exists: $cartDir\n"; 
}
else {
    print "cart dir doesn't exist, gitting it now...\n";
    gitClone();
}

print "cleaning any previous symlinks\n";
foreach my $file (@dotFiles) {
    my $cmd = "rm -f $homeDir/$file";
    system($cmd);
}

print "setting up symlinks to dotfiles in $cartDir\n";
foreach my $file (@dotFiles) {
    doSymlink($file);
}

sub gitClone {
    my $cmd = "git clone https://github.com/awynne/cart.git";
    print "running: $cmd \n";
    system($cmd);

    print "Configuring git user\n";
    my $gitName  = "git config --global user.name \"Adam Wynne\"";
    system($gitName);
    my $gitEmail = "git config --global user.email \"awynne\@gmail.com\n";
    system($gitEmail);
}

# link a file in the homedir to a file in the cart dir
sub doSymlink {
    (my $file) = @_;
    my $cmd = "ln -s $cartDir/$file $homeDir/$file";
    print "running: $cmd \n";
    system($cmd);
}


