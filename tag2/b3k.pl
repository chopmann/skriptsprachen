#!/usr/bin/env perl


while($line = <>) {
    chomp $line;
    if (index($line, 'error') != -1) {
        print STDERR "stderr: ".$line."\n";
    } elsif (index($line, 'stdout') != -1){
        print "stdout: ".$line."\n"; 
    } else {
        print "Echo: ".$line."\n";  
    }
}
