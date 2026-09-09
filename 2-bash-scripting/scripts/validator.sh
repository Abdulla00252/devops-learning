#!/bin/bash


NUM=$1

if [ $NUM -gt 0 ]; then 
	echo "$NUM is positive"
elif [ $NUM -eq 0 ]; then 
	echo "$NUM is zero"
else
	echo "$NUM is negative"
fi

