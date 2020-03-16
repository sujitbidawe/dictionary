#! /bin/bash

count=1
minCount=9999
LIMIT=10

declare -A diceDict

diceDict=( [face1]=0 [face2]=0 [face3]=0 [face4]=0 [face5]=0 [face6]=0 )

while [[ ${diceDict[face$dice]} -ne $LIMIT ]]
do
      dice=$(( RANDOM%6+1 ))

      case $dice in
				1)
            diceDict["face1"]=$((${diceDict[face1]}+1)) ;;

				2)
            diceDict["face2"]=$((${diceDict[face2]}+1)) ;;

				3)
            diceDict["face3"]=$((${diceDict[face3]}+1)) ;;

      		4)
            diceDict["face4"]=$((${diceDict[face4]}+1)) ;;

				5)
            diceDict["face5"]=$((${diceDict[face5]}+1)) ;;

				6)
            diceDict["face6"]=$((${diceDict[face6]}+1)) ;;
      esac

      # to get max frequent face
      if [[ ${diceDict[face$dice]} -eq $LIMIT ]]
      then
            maxFrequentFace=face$dice
      fi

done

# for printing key:value pairs
for key in "${!diceDict[@]}"
do
		echo "$key: ${diceDict[$key]}"
done

# for finding which face has minimum count
for key in "${!diceDict[@]}"
do
		if [[ ${diceDict[$key]} -lt $minCount ]]
		then
				minCount=${diceDict[$key]}
		fi
		done

echo "Most frequent face with count ${diceDict[$maxFrequentFace]}: $maxFrequentFace"
echo -n "Least frequent face/faces with count $minCount: "

# for printing faces with minimum values
for key in "${!diceDict[@]}"
do
		if [[ ${diceDict[$key]} -eq $minCount ]]
		then
				echo -n "$key "
		fi
done

echo ""
