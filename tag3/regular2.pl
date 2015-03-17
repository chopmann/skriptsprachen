#!/usr/bin/env perl

# Example of a Matching String mmm5xccc876zzz

while(<>){
    if(/mmm(\d.)ccc(\d{3})zzz/){ # substring \d. is stored in $1
        $_ = "$1 $2\n"; #  substring \d\d\d is stored in $2
        print;
    }
}
