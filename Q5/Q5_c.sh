#!/bin/bash

read
str=$REPLY

#a -

for (( i=(${#str}-1)/2; i>=0; i-- ))
do
    echo -n ${str:$i:1}
done

for (( i=${#str}/2; i<${#str}; i++ ))
do
    echo -n ${str:$i:1}
done

echo #for new line