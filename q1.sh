#!/bin/bash

grep -v ^$ quotes.txt | awk '!line_array[$0]++'

# -v flag with grep removes the argument
#   ^ - start of line and $ - end of line 
# redirecting lines into awk 
# if the count of the line in the array is ==0, then it is printed.

#Removes blank lines and duplicates both