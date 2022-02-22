#!/bin/bash

Filename="filenames.txt"

#Store all the lines in the file in a variable
Lines=$(cat $Filename)

#Iterate over each of the lines
for Line in $Lines
do

#checks if the line is a file in the current directory.
if [[ -f  "$Line" ]]; then
	echo "$Line" "That file exists"

#checks if the line is a folder in the current directory.
elif [[ -d "$Line" ]]; then
	echo "$Line" "That's a directory"
else
	echo "$Line" "I don't know what that is!"
fi
done




