#!/bin/bash

echo "What operation would you like to perform? "
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"

read -p "Select the number: " selection

read -p "Enter First Number: " first

read -p "Enter Second Number: " second

case "$selection" in
	"1") op="+" ;;
	"2") op="-" ;;
	"3") op="*" ;;
    "4") op="/" ;;
esac

echo expr $first $op $second