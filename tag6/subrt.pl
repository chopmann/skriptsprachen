#!/usr/bin/perl

#Überprüft den Programmierstil des Programmierers
use strict;
my ($retw, @retw, $n, $i, %wb, $k, $v);

#Argumente können auch bei dem Ausführen übergeben werden
#Beispiel: perl ./subrt.pl printmenot printme
shift;
print "@ARGV    $ARGV[1]\n";

#Erzeugen eines Dictionarys mit einer Liste ("Key", "Value")
%wb = ("ein", "a",
       "der", "the",
       "Haus", "house");

#neuen Dictionary Eintrag erstellen
$wb{"Stift"} = "pen";
$wb{"0Der" } = "The";

print defined $wb{"irgendwas"};

#Ausgabe mit Sortier Funktion
for $k(sort {lc($a) cmp lc $b} keys %wb){ $v = $wb{$k};
    print "$k ---> $v\n" }

print "not exists\n" if
       not exists $wb{"irgendwas"};

#for $v(keys %wb){print "$v\n"}

__END__

#Die Anzahl der Argumente kann vorgegeben werden
#Shift nimmt ein Argument heraus und springt eins weite
#Vorzeitiges Return sobald die nachfolgende Bedingung nicht erfüllt ist
sub st($$@) {$_ = shift;
        print "$_\n";
        $_ = shift;
        return 456 if $_ > 1;
        print "$_\n" ;       
        if(wantarray) {(1, "a",2)}
        else          {558       }
        }

#Gibt alle Elemente des Arrays aus
#For-Schleife: 0 bis Anzahl der Elemente im Array
sub p {
       if(!@_){print "kein Arg!\n"}
    print "@_";
    # Methode 1
    while ($_ = shift){
        print "\tArg",$i++,":$_\n"    
    }
    #Methode 2
    #    for ($i = 0; $i < $#_; $i++){
    #        print "\tArg$1:$_[$i]\n"}
    }



# Übergibt der Subroutine ein Array und führt diese aus
p;
p "       ", 1, "abc", 55, "\n";
st "hello", "world";

#Returns
#der Aufruf der Subroutine liefert den Wert 1
$retw = st 123, "a", 55, 77;
print "$retw\n";

@retw = st 123, "a", 55, 77;
#Gibt das Array aus mit @
print "@retw\n";

#Erzeugt nach jedem Ausführen 3 Leerzeilen
print "\n" while $n++ < 3;


__END__

Themen: Subroutinen, Arrays

In $i ^@_ liegt für die beiden Seiten des Vergleichs "skalarer Kontext" vor.
In skalarem Kontext liefert ein Array seine Größe ab.

Perl versucht, "erwartungskonform" zu sein
