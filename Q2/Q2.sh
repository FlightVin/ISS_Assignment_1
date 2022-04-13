#!/bin/bash

#Since I am appending I don't want the file spech.txt to exist
touch speech.txt
rm speech.txt

while read line
do
    tilde_index=-1
    for (( i=0; i<${#line}; i++ )); do
        if [[ ${line:$i:1} == "~" ]]
        then
            tilde_index=$i
        fi
    done

    if [[ $tilde_index == -1 ]]
    then
        echo $line >> speech.txt
    else
        
        #echo ${line:$i+1} >> speech.txt
    fi
done < quotes.txt