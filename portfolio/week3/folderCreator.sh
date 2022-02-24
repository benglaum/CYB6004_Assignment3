#!/bin/bash

# Asks user to enter the name of the folder to create.
read -p "Type the name of the folder you would like to create: " folderName

# Creates that folder.
mkdir "$folderName"
