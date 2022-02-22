#!/bin/bash

#Displays the menu for the calculator.
echo "What operation would you like to perform? "
echo -e "1)\e[34m Addition \e[0m"
echo -e "2)\e[32m Subtraction \e[0m"
echo -e "3)\e[31m Multiplication \e[0m"
echo -e "4)\e[35m Division \e[0m"

#Asks the user to select the operation.
read -p "Select the number: " selection

#Asks the user to input the first number.
read -p "Enter first number: " first

#Asks the user to input the second number.
read -p "Enter second number: " second

case "$selection" in

	"1")
	answer=$(echo "$first+$second" | bc)
	echo -e "\e[34m$first + $second = $answer \e[0m"
	;;

	"2")
	answer=$(echo "$first-$second" | bc)
	echo -e "\e[32m$first - $second = $answer \e[0m"
	;;

	"3")
	answer=$(echo "$first*$second" | bc)
	echo -e "\e[31m$first * $second = $answer \e[0m"
	;;

	"4")
	answer=$(echo "$first/$second" | bc)
	echo -e "\e[35m$first / $second = $answer \e[0m"
	;;
esac

