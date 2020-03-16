#! /bin/bash

choice="y"
yes="y"
count=1
declare -A diceDict

while [ "$choice" = "$yes" ]
do
		dice=$(( RANDOM%6+1 ))
		echo $dice
		diceDict["dice"$count]=$dice
		(( count++ ))
		read -p "roll dice again? press y for yes, anything else for no: " choice
done

echo ${diceDict[@]}
