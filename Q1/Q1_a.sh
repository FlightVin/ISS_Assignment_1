#!/bin/bash

grep -v ^$ quotes.txt > temp_quotes.txt
rm quotes.txt
mv temp_quotes.txt quotes.txt

#grep used for parrent matching
#^ - beginning of line and $ - end of line, so ^$ is a blank line
# -v removes the required test

