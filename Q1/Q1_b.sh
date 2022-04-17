#!/bin/bash

awk '!line_array[$0]++' quotes.txt 

# the line is only processed if it's count, ie, value corresponding in the array line_array is 0
# the negation (!)  takes care of not allowing duplicates when the count in line_array gets >0
