#!/bin/bash

echo "options"
echo "1) all sed statements"
echo "2) all lines that start with the letter m"
echo "3) all lines that contain three digit numbers"
echo "4) all echo statements with at least three words"
echo "5) all lines that would make a good password"

read -p "Selection: " selection

case $selection in

	1)
	echo "All sed statments: "
	grep -r sed
	;;

	2)
	echo "All lines that start with the letter m: "
	grep -r "^m"
	;;

	3)
	echo "All lines that contain three digit numbers: "
	grep -r '/d{3}'
	;;

	4)
	echo "All echo statements with at least three words"
	;;

	5)
	echo "All lines that would make a good password"
	;;

	*)
	echo "Unknown selection"
	;;
esac





