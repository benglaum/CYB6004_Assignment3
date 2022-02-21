#!/bin/bash

# Runs a script that checks a password.
./passwordCheck.sh

# If the password is correct the menu is displayed.
if [[ $? == 0 ]]; then
	echo ""
	echo "1. Create a folder"
	echo "2. Copy a folder"
	echo "3. Set a password"
	echo ""

	# Ask for user to select the menu item.
	read -p  "Select the number: " choice

	# Executes the menu item chosen.
	case "$choice" in
	"1") ./folderCreator.sh ;;
	"2") ./folderCopier.sh ;;
	"3") ./setPassword.sh ;;
	esac

# Executes if the password is incorrect. 
else
	exit

fi

