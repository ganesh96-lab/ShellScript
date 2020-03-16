#! /bin/bash -x
#WAP to find given year is leap year or not?
read -p 'Enter year:' year

echo $year

if [[ $year -ge 1000 && $year -le 9999 ]]
then
	if [[ $year%4 -eq 0 && $year%100 -ne 0 || $year%400 -eq 0 ]]
	then
		echo "Leap Year"
	else
		echo "Not Leap year"
	fi
else
	echo "Invalid year"
fi
