#!/bin/bash


NUM1=$1
NUM2=$2

SUM=$((NUM1 + $NUM2))

echo "$NUM1 + $NUM2 = $SUM"



SUM=$((NUM1 - $NUM2))

echo "$NUM1 - $NUM2 = $SUM"
  

SUM=$((NUM1 * $NUM2))

echo "$NUM1 * $NUM2 = $SUM"





if [ $NUM2 -eq 0 ]; then
	echo "Error: cannot divide by zero"
	exit 1
else
	RESULT=$((NUM1 / $NUM2))

echo "$NUM1 / $NUM2 = $RESULT"

fi




