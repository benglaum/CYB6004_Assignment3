#!/bin/bash

#Runs the password check script.
./PasswordCheck.sh

#If the password is correct then the if statement is executed.
if [ $? -eq 0 ]; then

	#Loop runs until user selects to exit.
	while [[ 1 ]]; do

		#Displays Menu options.
		echo -e "\e[34mMega Menu Options: \e[0m"
		echo "  1. Create a folder"
		echo "  2. Copy a folder"
		echo "  3. Set a password"
		echo "  4. Calculator"
		echo "  5. Create Week Folders"
		echo "  6. Check Filenames"
		echo "  7. Download a File"
		echo "  8. Exit"

		#Prompts user to select item from menu.
		read -p $'\e[31mSelect an option or exit to quit: \e[0m' choice

		#Executes chosen script from selected.
		case "$choice" in

		"1") ./folderCreator.sh ;;

		"2") ./folderCopier.sh ;;

		"3") ./setPassword.sh ;;

		"4") ./calculator.sh ;;

		"5") ./megafoldermaker.sh ;;

		"6") ./filenames.sh ;;

		"7") ./InternetDownloader.sh ;;

		"8") exit ;;

		"exit") exit ;;

		esac
	done

else
	exit
fi


