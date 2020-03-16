#! /bin/bash

choice="y"
yes="y"

while [ "$choice" = "$yes" ]
do
		dice=$(( RANDOM%6+1 ))
		echo $dice
		read -p "roll dice again? press y for yes, n for no" choice
done
