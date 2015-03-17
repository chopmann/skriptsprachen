To start the scripts:
On Linux:
./b3k.pl 2>./error.log
or 
./b3k.py 2>./error.log

The "2>./error.log" is redirecting the stderror output to a file named error.log

Read and "Pipe" ww.txt to our scripts:
Linux:
 cat ww.txt | ./b3k.pl 2>error.log
 cat ww.txt | ./b3k.py 2>error.log
On Windows (Not my system):
 type ww.txt | ./b3k.pl 2>error.log
 type ww.txt | ./b3k.py 2>error.log

Good Luck!

Infos:

http://en.wikipedia.org/wiki/Standard_streams
tl;dr
The three I/O connections are called standard input (stdin), standard output (stdout) and standard error (stderr).

http://www.tldp.org/LDP/abs/html/io-redirection.html

   1>filename
      # Redirect stdout to file "filename."
   1>>filename
      # Redirect and append stdout to file "filename."
   2>filename
      # Redirect stderr to file "filename."
   2>>filename
      # Redirect and append stderr to file "filename."

