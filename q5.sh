#!/bin/bash

read
str=$REPLY

#a -

for (( i=${#str}-1; i>=0; i-- ))
do
    echo -n ${str:$i:1}
done
echo #for new line

#b -

read
str=$REPLY

for (( i=${#str}-1; i>=0; i-- ))
do
    echo -n "${str:$i:1}" | tr "a-z" "b-za" | tr "A-Z" "B-ZA"
    #Assuming z is replaced with a
    #using tr to replace
done
echo #for new line

#c -

read
str=$REPLY

for (( i=(${#str}-1)/2; i>=0; i-- ))
do
    echo -n ${str:$i:1}
done

for (( i=${#str}/2; i<${#str}; i++ ))
do
    echo -n ${str:$i:1}
done

echo #for new line