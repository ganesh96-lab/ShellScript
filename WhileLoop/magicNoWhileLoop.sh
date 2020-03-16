#!/bin/bash -x

echo "Think of number"
low=1
high=101
mid=0
choice=0
while [[ $choice -ne 3 ]]
do
	mid=$(( ($low+$high)/2 ))

	echo "1:Number greater than "$mid
	echo "2:Number less than "$mid
	echo "3:Number equal to "$mid

	read -p "Enter choice" choice
	case $choice in
		1)
			low=$(( $mid+1 ));;
		2)
			high=$(( $mid-1 ));;
	esac
done

echo "I Gussed your number"
