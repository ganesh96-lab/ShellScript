#!/bin/bash

#Read a Number and Display the week day using case
read -p "Enter single digit number" number

case $number in
	0)
		echo "Sunday";;
	1)
		echo "Monday";;
	2)
		echo "Tuesday";;
	3)
		echo "Wednesday";;
	4)
		echo "Thrusday";;
	5)
		echo "Friday";;
	6)
		echo "Saturday";;
	*) 
		echo "Invalid input";;
esac
