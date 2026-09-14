#!/bin/bash

FILE=$1

if [ -f $FILE ]; then 
	echo "file '$FILE' exists" 



if [ -r $FILE ]; then 
	echo "✓ File is readable"
else 
	echo "File is not readable"
fi 

if [ -w $FILE ]; then
	echo "File is writeable"
else 
	echo "file is not writable"
fi

if [ -x $FILE ]; then 
	echo "File is executable"
else 
	echo "File is not executable"
fi
else
	echo "File '$FILE' does not exist."
	fi





