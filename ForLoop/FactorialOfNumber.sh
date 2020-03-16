#!/bin/bash -x

read -p "Enter Number to find factorial : " number

factorial=1
for (( i=$number; i>0; i-- ))
do

	factorial=$(( $factorial*$i ));
done
echo "factorial of $number : " $factorial
