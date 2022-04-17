#!/bin/bash

grep -v ^$ quotes.txt > temp.txt
awk '!line_array[$0]++' temp.txt
rm temp.txt

#Removes blank lines and duplicates both