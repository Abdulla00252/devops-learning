#!/bin/bash

GRADE=$1  

if [ $GRADE -ge 80 ]; then 
       echo "Well Done you passed"
elif [ $GRADE -ge 60 ]; then 
echo "you nearly passed but your better then those that failed"

elif [ $GRADE -le 40 ]; then
	       echo "You have failed bad"
fi 
