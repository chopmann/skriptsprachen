#!/usr/bin/env perl

# Example of a Matching String mmm5xccc876zzz
# Output 5x 876

while(<>){
    if(/mmm(\d.)ccc(\d{3})zzz/){ # substring \d. is stored in $1
        $_ = "$1 $2\n"; #  substring \d{3} is stored in $2
        print 'in Zeile '.__LINE__.': '.$_; # __LINE__ -> in welche Linie sich der Aufruf (print ...) befindet
    }
}
