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
#using word count (wc) to do it - 
wc -w $REPLY | awk '{print $1}'

#d
counter=1
while read line
do
    words=( $line ) #converting each line to a string
    var=${#words[*]} #number of elements in the array = number of words in the line
    echo "$counter $var"
    let counter++
done < $REPLY

#e


