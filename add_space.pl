#!/usr/bin/perl -w
use Text::Indent;

my $indent = Text::Indent->instance;
my $filename = 'output_1.txt';
$indent->increase;

open(FH, '<', $filename) or die $!;

while(<FH>){
   print $indent->indent($_);
   $indent->increase(2);
}

close(FH);
