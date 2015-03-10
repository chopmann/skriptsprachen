#!/usr/bin/env python 
from sys import stdin, stderr


for line in stdin:
    line = line.strip()
    if "error" in line:
        stderr.write("stderr: " + line + "\n")
    elif "stdout" in line:
        print "stdout: " + line
    else:
        print "Echo: " + line
