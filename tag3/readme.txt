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

Regular Expresion (RegEx)
========================
https://www.cs.tut.fi/~jkorpela/perl/regexp.html

(...)  	: Capturing - es sei denn:
(?:...)	: Clustering ohne Capturing

?	: höhstens 1x
+	: mind. 1x
*	: bel. viel mal
{n}	: genau n-mal 
{n,m}	: mind. n-mal, höchstens m-mal
{,m}	: höchstens m-mal
{n,}	: mind. n-mal


.  	: beliebiges Zeichen
\d 	: Ziffer; 	\D : Nicht-Ziffer
\w 	: Zeichen, das "Wortbestandteil" sein kann
\s 	: Whitespace
\n 	: NewLine

... -> perldoc perlre

Wie arbeitet eine Regex-Maschine?:
Es wird von "links nach rechts" abgearbeite.
default: "gierig" ("greedy") also z.B. bei 3*: 33333333333333x: alle 3-en (soweit wie möglich gehen)
Vielfachheitangabe + '?' : so bescheiden wir möglich also z.B.
	/3*?/1	: von 33333333333333x: gar keine 3
	/3*?x/	: von 33333333333333x: alle 3-en
	/(.*?)x/ bei 333x33x33x: $1 eq '333'
	/(.*)x/  bei 333x33x33x: $1 es '333x33x33'
