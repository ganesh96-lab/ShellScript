#!/bin/bash

echo "Enter 1 for feet to inch"
echo "Enter 2 for inch to feet"
echo "Enter 3 for feet to meter"
echo "Enter 4 for meter to feet"

read choice
#CONSTANTS
FEETTOINCH=1
INCHTOFEET=2
FEETTOMETER=3
METERTOFEET=4

case $choice in
	$FEETTOINCH)
		read -p "Enter feet: " feet
		inch=`echo "scale=4; $feet * 12" | bc`
		echo "$feet feet=$inch inch";;
	$INCHTOFEET)
		read -p "Enter inch: " inch
		feet=`echo "scale=4; $inch / 12" | bc`
		echo "$inch inch=$feet feet";;
	$FEETTOMETER)
		read -p "Enter feet: " feet
		meter=`echo "scale=4; $feet * 0.3048" | bc`
		echo "$feet feet = $meter meter";;
	$METERTOFEET)
		read -p "Enter meter: " meter
		feet=`echo "scale=2; $meter / 0.3048" | bc`
		echo "$meter meter = $feet feet";;
	*)
		echo "Invalid input"
esac
