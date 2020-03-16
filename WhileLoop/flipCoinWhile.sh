#!/bin/bash -x

#Problem Statement :Flip Coin problem till either Heads or Tails wins 11 times.
#Author : Ganesh Ghodke
#Date : 14-03-2020

#Variables
head=0
tail=0

#here we iterate the loop till head or tail becomes 11
while [[ $head -ne 11 && $tail -ne 11 ]]
do
	#get random number 0 or 1
	random=$(( RANDOM%2 ))

	if [ $random -eq 0 ]
	then
		#increment head
		((head++))

	elif [ $random -eq 1 ]
	then
		#increment tail
		((tail++))
	else
		echo "invalid input"
		break;
	fi
done

#check head win or tail win
if [ $head -eq 11 ]
then
	echo	"head win"
else
	echo	"tail win"
fi
