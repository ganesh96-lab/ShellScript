#!/bin/bash -x

# program to check if a number is prime

read -p "Enter a number : " number
counter=0

#Iterate  2 to number
for (( i=2; i<$number; i++))
do
	# If number is divisible by any number between  2 and number, it is not prime 
	if [ $(( $number % $i )) -eq 0 ]
	then
		$counter++;
	fi
done

if [ $counter -eq 0 ]
then
	echo "$number is prime"
else
	echo "$number is not prime"
fi	
