#!/bin/bash

#While loop keeps running until user types exit.
while [[ 1 ]]; do

	#Prompts user to enter a website.
	read -p "Enter the URL of a website to download or exit to quit: " url

	#If exit is entered exit the loop.
	if [[ "$url" == "exit" ]]; then
		exit

	#Prompts user to enter a storage location and downloads the website.
	else
		read -p "Type the location where you want to store this website: " store
		wget -P "$store" "$url"
	fi

done


