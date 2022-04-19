#!/bin/bash

#Reading the file - 
read

#d
counter=1
while read line
do
    words=( $line ) #converting each line to a string
    var=${#words[*]} #number of elements in the array = number of words in the line
    echo "Line No: $counter - $var"
    let counter++
done < $REPLY
