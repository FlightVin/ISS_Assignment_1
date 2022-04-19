#!/bin/bash

#Reading the file - 
read

#c 
#using word count (wc) to do it - 
wc -w $REPLY | awk '{print $1}'
