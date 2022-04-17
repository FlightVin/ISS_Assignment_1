#!/bin/bash

read
str=$REPLY

#b -

for (( i=${#str}-1; i>=0; i-- ))
do
    echo -n "${str:$i:1}" | tr "a-z" "b-za" | tr "A-Z" "B-ZA"
    #Assuming z is replaced with a
    #using tr to replace
done
echo #for new line