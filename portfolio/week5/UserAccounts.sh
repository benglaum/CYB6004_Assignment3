#!/bin/bash

#Function to print an Underline of a certain Length.
UnderLine() {
	string=$(printf "%0.s_" $(seq 1 $1))
	printf "$string"
}

#Function to print whole line for the table.
WholeLine() {
	printf "$1"
	UnderLine 22
	printf "$1"
	UnderLine 10
	printf "$1"
	UnderLine 10
	printf "$1"
	UnderLine 35
	printf "$1"
	UnderLine 22
	printf "$1\n"
}

#Colours
R="\033[1;31m"
G="\033[1;32m"
Y="\033[1;33m"
B="\033[1;34m"
P="\033[1;35m"
N="\033[0m"

#Variables
SPACE=" "
VERTICAL="|"

#Prints top vertical Line of table
WholeLine "$SPACE"

#Prints table headings
printf "| $B%-20s$N | $B%-8s$N | $B%-8s$N | $B%-33s$N | $B%-20s$N |\n" "Username" "UserID" "GroupID" "Home" "Shell"

#Prints Vertical line of table with `|`
WholeLine "$VERTICAL"

#Prints the filtered results.
awk -v r=$R -v g=$G -v y=$Y -v p=$P -v n=$N -F: '{printf "| %s%-20s%s | %s%-8s%s | %s%-8s%s | %s%-33s%s | %-20s |\n", r,$1,n,g,$3,n,y,$4,n,p,$6,n,$7}' /etc/passwd | grep "/bin/bash"

#Prints Bottom line of table.
WholeLine "$VERTICAL"










