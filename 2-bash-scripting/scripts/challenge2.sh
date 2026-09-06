#!/bin/bash



CURRENT_DATE=$(date +"%y-%m-%d")


mkdir -p bash_demo


echo "Directory 'bash_demo' created."


echo "This file was created by Bash script on $CURRENT_DATE" > bash_demo/demo.txt

echo "File 'demo.txt' created."

echo "File contents:"

cat bash_demo/demo.txt


