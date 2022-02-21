#!/bin/bash

# Ask user to enter the password.
read -p "Enter the secret password: " password

# Retrieves the stored password for file.
storedPassword=$(cat secret.txt)

# Hashes the entered password.
entredPassword=$(echo "$password" | sha256sum)

# Checks if the entered password maches the stored password.
if [ "$entredPassword" == "$storedPassword" ]; then
	echo "Access Granted"
	exit 0
else
	echo "Access Denied"
	exit 1
fi
