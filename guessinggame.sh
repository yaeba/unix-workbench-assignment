#!/bin/bash

ANS=$(ls | wc -l)

function guess {
    read res

    if [[ $res -lt $ANS ]]
    then
	echo "Too low! Guess again: "
    elif [[ $res -gt $ANS ]]
    then
	echo "Too high! Guess again: "
    else
	echo "You've guessed it right!"
	exit 0
    fi
    guess
}

echo "Guess how many files in current directory:"
guess
    
