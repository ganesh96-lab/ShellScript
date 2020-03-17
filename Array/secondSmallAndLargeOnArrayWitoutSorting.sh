#!/bin/bash -x


minThreeDigit=100
maxThreeDigit=999
arraySize=10

diff=$(($maxThreeDigit-$minThreeDigit))
for (( number=0; number<$arraySize; number++))
do
	random=$((RANDOM%$diff))
	randomNumber=$(($random+$minThreeDigit))

	array[$number]=$randomNumber
done
echo "array=${array[@]}"


function secondLarge(){
	secondLarge=0
	large=0

	for (( number=0; number<$arraySize; number++ ))
	do
		if [ ${array[number]} -gt $large ]
		then
			secondLarge=$large
			large=${array[number]}
		elif [[ ${array[number]} -gt $secondLarge && ${array[number]} -ne $large ]]
		then
			secondLarge=${array[$number]}
		fi
	done
	echo "SecondLargest=" $secondLarge

}

function secondSmall(){
	small=1000
	secSmall=1000

	for (( number=0; number<$arraySize; number++ ))
	do
		if [ ${array[number]} -lt $small ]
		then
			secSmall=$small
			small=${array[number]}
		elif [[ ${array[number]} -lt $secSmall && ${array[number]} -ne $small ]]
		then
			secSmall=${array[number]}
		fi
	done
	echo "SecondSmall=" $secSmall


}

secondLarge
secondSmall
