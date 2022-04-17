#!/bin/bash

IFS=',' #to read things separated by commas (,)
read -a arr

for (( i=0; i<${#arr[*]}; i++ ))
do
    for (( j=0; j<${#arr[*]}-$i-1; j++))
    do
        if [[ ${arr[$j]} > ${arr[$j+1]} ]]
        then
            temp_var=${arr[$j+1]}
            arr[$j+1]=${arr[$j]} 
            arr[$j]=$temp_var
        fi
    done
done

echo ${arr[*]}