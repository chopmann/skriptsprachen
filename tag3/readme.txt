Tag3
====

Perl, Python, Bash


              |-Textverarbeitung > MS Office
Office Packete|-Tabellenkalk     > od
              |-Zeichnungen      >   er
              |-Präsentation     > Libre Office

---> Basic zur Automation (VBA -- Visual Basic for Applications -- MS)
			  (Libre Office Basic)

String Interpolation
====================

http://en.wikipedia.org/wiki/String_interpolation
In computer programming, string interpolation or variable interpolation (also variable substitution or variable expansion) is the process of evaluating a string literal containing one or more placeholders, yielding a result in which the placeholders are replaced with their corresponding values.

Single Quoted Strings (Perl)
---------------------
http://perlmaven.com/quoted-interpolated-and-escaped-strings-in-perl
 my $name = 'Foo';
 print 'Hello $name, how are you?\n';

 > Hello $name, how are you?\n

Double quoted strings (Perl)
---------------------
 my $name = 'Foo';
 my $time  = "today";
 print "Hello $name,\nhow are you $time?\n";
 
 > Hello Foo,
   how are you today?

In Python
--------
https://docs.python.org/2/library/stdtypes.html#string-formatting-operations
