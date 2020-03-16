#!/bin/bash -x

#problem Statement :Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less 
						 #than or equal to 2^n till 256 is reached
#Author : Ganesh Ghodke
#Date : 14-03-2020

#range using command line
n=$1
count=1
range=256
power=1

#here check the 2 ^ count  is less 256 and count  less or eq to n
while [[ $power -lt 256 && $count -le $n ]]
do
	power=`echo "2^$count " | bc`
	echo $power
	(( count++ ))
done
