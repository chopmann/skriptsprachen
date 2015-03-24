#!/usr/bin/perl

sub st { $_ = shift;
        print "$_\n"}

sub p {
    #Gibt alle Elemente des Arrays aus
    #For-Schleife: 0 bis Anzahl der Elemente im Array
    if(!@_){print "kein Arg!\n"}
    print "@_";
    for ($i = 0; $i < $#_; $i++){
        print "\tArg$1:$_[$i]\n"}
    }

# Übergibt der Subroutine ein Array und führt diese aus
p;
p "       ", 1, "abc", 55, "\n";
st 123;


__END__

Themen: Subroutinen, Arrays

In $i ^@_ liegt für die beiden Seiten des Vergleichs "skalarer Kontext" vor.
In skalarem Kontext liefert ein Array seine Größe ab.
