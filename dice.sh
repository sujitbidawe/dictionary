#! /bin/bash

#choice="y"
#yes="y"
count=1
LIMIT=10
#minFrequentFace=1000
#maxFrequentFace=-1

declare -A diceDict

diceDict=( [face1]=0 [face2]=0 [face3]=0 [face4]=0 [face5]=0 [face6]=0 )

while [[ ${diceDict[face1]} -ne $LIMIT && ${diceDict[face2]} -ne $LIMIT && ${diceDict[face3]} -ne $LIMIT && ${diceDict[face4]} -ne $LIMIT && ${diceDict[face5]} -ne $LIMIT && ${diceDict[face6]} -ne $LIMIT ]]
do
		dice=$(( RANDOM%6+1 ))

#		echo $dice

		if [[ $dice -eq 1 ]]
		then
				diceDict["face1"]=$((${diceDict[face1]}+1))
		elif [[ $dice -eq 2 ]]
      then
            diceDict["face2"]=$((${diceDict[face2]}+1))
		elif [[ $dice -eq 3 ]]
      then
            diceDict["face3"]=$((${diceDict[face3]}+1))
		elif [[ $dice -eq 4 ]]
      then
            diceDict["face4"]=$((${diceDict[face4]}+1))
		elif [[ $dice -eq 5 ]]
      then
            diceDict["face5"]=$((${diceDict[face5]}+1))
		elif [[ $dice -eq 6 ]]
      then
            diceDict["face6"]=$((${diceDict[face6]}+1))
		fi

#		read -p "Do you want to roll the dice again? enter y for yes and anything else for no" choice
done

for key in "${!diceDict[@]}"
do
		echo $key: ${diceDict[$key]}
done
