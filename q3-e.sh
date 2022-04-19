#!/bin/bash

#Reading the file - 
read

#e
cat $REPLY | tr ' ' '\n' | tr -c '[:alnum:]' '\n' | sort | uniq -c | awk '{if ( $1 != 1) print "Word: " $2 " - "$1-1 }'
#subtracting 1 since it asked for number of repetitions
#Read the file
#   Make all spaces into newline characters
#       Sort the words
#           Count words with their count
#               Print the result only if duplicates
#NOTE - interpreting question as only printing when frequency > 1
