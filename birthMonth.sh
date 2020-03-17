#! /bin/bash

declare -A month
#month=( [january]=0 [february]=0 [march]=0 [april]=0 [may]=0 [june]=0 [july]=0 [august]=0 [september]=0 [october]=0 [november]=0 [december]=0  )
month=( [january]="" [february]="" [march]="" [april]="" [may]="" [june]="" [july]="" [august]="" [september]="" [october]="" [november]="" [december]="" )
echo ${month[@]}

for (( person=1 ; person<=50; person++ ))
do
		birthMonth=$(( RANDOM%12 + 1 ))
		case $birthMonth in
				1)
				month["january"]="${month[january]} person$person";;
				2)
				month["february"]="${month[february]} person$person";;
				3)
				month["march"]="${month[march]} person$person";;
				4)
				month["april"]="${month[april]} person$person";;
				5)
				month["may"]="${month[may]} person$person";;
				6)
				month["june"]="${month[june]} person$person";;
				7)
				month["july"]="${month[july]} person$person";;
				8)
				month["august"]="${month[august]} person$person";;
				9)
				month["september"]="${month[september]} person$person";;
				10)
				month["october"]="${month[october]} person$person";;
				11)
				month["november"]="${month[november]} person$person";;
				12)
				month["december"]="${month[december]} person$person";;
		esac
done

#echo ${!month[@]}
#echo ${month[@]}

for key in "${!month[@]}"
do
		echo "$key: ${month[$key]}"
done

