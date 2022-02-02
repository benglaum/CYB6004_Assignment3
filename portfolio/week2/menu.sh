

#!/bin/bash

./passwordCheck.sh

if [[ $? == 0 ]]; then
	echo "1. Create a folder"
	echo "2. Copy a folder"
	echo "3. Set a password"
	read -p  "select the number:" choice

	case "$choice" in
	"1") ./folderCreator.sh ;;
	"2") ./folderCopier.sh ;;
	"3") ./setPassword.sh ;;
	esac



else
	exit




fi

