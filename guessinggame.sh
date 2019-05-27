#!/bin/bash

realNumOfFiles=$(ls -la .|egrep -c "(^-)|(^l)")
echo "Guess how many files are in $(pwd)"
function yourGuess(){
	while true;do
		echo -n "Your try: "
		read -r guess
		if ! [[ $guess =~ ^[0-9]+$ ]]
   		then
        echo "Sorry integers only"
        continue
		fi		
		if [ $guess -eq $realNumOfFiles ];then 
			echo "Congrats.Real number of files in $pwd is $guess"
			break
		elif [ $guess -lt $realNumOfFiles ];then
			echo "Wrong.Try higher number.Number is too lower!"
		else
			echo "Wrong.Try smaller number.Number is too higher!"
		fi
	done 
}

yourGuess
