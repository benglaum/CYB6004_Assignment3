#!/bin/bash

i=1
while [[ $i=1 ]]; do 

echo "1) Enter a website"
echo "2) Exit"

read -p "Selection: " choice

if [[ "$choice" == "2" ]]; then
	exit
else 
	echo "BEN"
fi

done


