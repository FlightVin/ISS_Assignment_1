#!/bin/bash

read
str=$REPLY

#a -

for (( i=${#str}-1; i>=0; i-- ))
do
    echo -n ${str:$i:1}
done
echo #for new line