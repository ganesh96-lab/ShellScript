#!/bin/bash -x

#Computes a factorial of a number taken as input

#Ask the user to enter number
read -p "Enter Number to find factorial : " number

factorial=1
for (( i=$number; i>0; i-- ))
do
	#Product of numbers from number to 1
	factorial=$(( $factorial*$i ));
done
echo "factorial of $number : " $factorial
