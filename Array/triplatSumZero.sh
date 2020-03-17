#!/bin/bash -x



read -p "Enter size of array:" SIZEOFARRAY
echo "Enter elements in array:"
counter=1

for (( i=0; i<$SIZEOFARRAY; i++ ))
do
	read -p "Enter: " number
	array[i]=$number
done
echo ${array[@]}


for ((first=0; first<$(($SIZEOFARRAY-2)); first++ ))
do
	for (( second=$((first+1)); second<$(($SIZEOFARRAY-1));  second++ ))
	do
		for (( third=$((second+1)); third<$SIZEOFARRAY; third++ ))
		do
			#here check triplatre sum=0
			if [ $(( array[$first] + array[$second] + array[$third])) -eq 0 ]
			then
				echo "triplate: " $counter
				echo " ${array[$first]} "
				echo " ${array[$second]} "
				echo " ${array[third]}"
				((counter++))
			fi
		done
	done
done
