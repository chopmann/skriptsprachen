#!/usr/bin/env perl

while(<>){
    if(/m(..)c/){ # The matching substring (..) is
        $_ = "$1 $_"; # stored in $1
        print;
    }
}
