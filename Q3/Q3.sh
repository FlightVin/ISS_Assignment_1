#!/bin/bash

#Reading the file - 
read

#a
stat --printf="%s\n" $REPLY

#b
cat -n $REPLY | tail -n1 | awk '{print $1}'

#cat with n flag prints the file with line numbers
#I access the last line using tail -n1
#and print the first word, ie, the line number using awk

#c 

