#!/bin/bash
Filename="filenames.txt"
Lines=$(cat $Filename)

for Line in $Lines
do
if [[ -f  "$Line" ]]; then
	echo "$Line" "That file exists"

elif [[ -d "$Line" ]]; then
	echo "$Line" "That's a directory"
else
	echo "$Line" "I don't know what that is!"
fi
done




