#! /bin/bash -x

#VARIABLES
minThreeDigit=100
maxThreeDigit=1000
#CONSTANT
ARRAYSIZE=10


diff=$(($maxThreeDigit-$minThreeDigit))
for (( number=0; number<$ARRAYSIZE; number++))
do
	random=$((RANDOM%diff))
	randomNumber=$((random+minThreeDigit))

	array[number]=$randomNumber
done

echo "${array[@]}"
for (( pass=0; pass<$ARRAYSIZE; pass++ ))
do

	for (( i=0; i<$(($ARRAYSIZE-$pass-1)); i++ ))
	do
		if [ ${array[i]} -gt ${array[i+1]} ]
		then
			temp=${array[i]}
			array[i]=${array[i+1]}
			array[i+1]=$temp 
		fi
	done
done

echo "array=${array[@]}"
echo "SecondLarge Number=${array[$ARRAYSIZE-2]}"
echo "SecondSmall Number=${array[1]}"
