#!/bin/bash

ERROR="Not between 1 and 100"

printError()
{

	echo -e "\033[31mERROR:\033[0m $ERROR"

}

getNumber()
{

	read -p "Please enter a number between 1 and 100: " numb

	while (( $numb < 1 || $numb > 100 )); do
		printError
		read -p "Please enter a number between 1 and 100: " numb
	done
	return $numb

}

getNumber

while (( $numb != 42 )); do
	if (( $numb < 42 )); then
		echo 'Too Low!'
	else
		echo 'Too High!'
	fi

	getNumber
done

echo 'Correct!'
exit 0







