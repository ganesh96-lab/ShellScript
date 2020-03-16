#!/bin/bash -x

#prints a table of the powers of 2 that are less than or equal to 2^n

#take value as command line
n=$1
#variables
num=2

for (( i=1; i<=$n; i++ ))
do

	square=`echo "$num ^ $i " | bc`
	echo $square
done
