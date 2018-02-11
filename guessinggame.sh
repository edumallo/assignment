#!/usr/bin/env bash
#guesshinggame.sh

function congrats {
	echo "Congratulations! You guessed right"
	exit 1

}


echo "Would you like to play a game of guess?"

while [[ 1 ]]
do
	echo "Please type the number of files in current directory:"
	read respuesta 
	echo "You entered : $respuesta"
	numfiles=$(ls -l|wc -l)-1
	if [[ respuesta -eq numfiles ]]
	then
		congrats
		echo "Congratulations! You guessed right"	
		exit 1
	elif [[ respuesta -gt numfiles ]]
	then
		echo "Your guess is too high"
	else
		echo "Your guess is too low"
	fi
done
