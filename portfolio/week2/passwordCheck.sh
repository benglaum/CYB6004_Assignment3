#!/bin/bash

read -p "Enter the secret password: " password
storedPassword=$(cat secret.txt)
entredPassword=$(echo "$password" | sha256sum)

if [[ "$entredPassword" == "$storedPassword" ]]; then
	echo "Access Granted"
	exit 0
else
	echo "Access Denied"
	exit 1
fi
