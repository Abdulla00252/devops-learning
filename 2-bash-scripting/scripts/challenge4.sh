#!/bin/bash

# Ask the user for source directory 
read -p "Enter source directory:" SOURCE_DIR

#check if the directory exists 
if [ -d "$SOURCE_DIR" ]; then

# Create timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M")

# create backup directory
mkdir backup_$TIMESTAMP
echo "Backup directory created: backup_$TIMESTAMP"

# copy all .txt files..."
echo "Copying .txt files..."
COUNT=0
for FILE in $SOURCE_DIR/*.txt; do
	if [ -f "$FILE" ]; then
		cp "$FILE" backup_$TIMESTAMP/
		COUNT=$((COUNT + 1))
	fi
done

echo "Backup complete! Files backed up: $COUNT"
else
	echo "Directory does not exist"
fi




