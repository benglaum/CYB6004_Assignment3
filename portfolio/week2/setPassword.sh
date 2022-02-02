#!/bin/bash

read -p "Type a folder name: " folderName
read  -p "Type a secret password: " password

if [[ -f "$folderName/secret.txt" ]]; then
	echo "$password" | sha256sum > "$folderName/secret.txt"
else
	mkdir "$folderName"
	echo "$password" | sha256sum > "$folderName/secret.txt"
fi
