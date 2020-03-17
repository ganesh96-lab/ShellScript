#!/bin/bash

for (( number=0; number<=100; number++ ))
do
	reminder=$(($number % 10 ));
	num=$((number/10));
	
	if [[ $reminder -eq $num && $number -ne 0 ]]
	then
		echo $number
	fi
done
