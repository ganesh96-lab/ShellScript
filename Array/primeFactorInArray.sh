#! /bin/bash -x

#print all prime factors of a given number

read -p "Enter Number to find prime factors : " number
#Iterate i 2 to number because 1 & 0 are not prime number

counter=0;
for (( i=2; i<=$number; i++ ))
do
	flag=0;
	#Here we check i is factor of number or not 
	while [ $(( $number % i )) -eq 0 ]
	do
		#If the  i is factor of number then check it is prime or not
		for (( j=2; j<$i; j++ ))
		do
			if [ $(($i % j)) -eq 0 ]
			then
				flag=1;
				break;
			fi
		done
		#here flag check  prime or not if flag =0 then prime
		if [ $flag -eq 0 ]
		then
			array[counter]=$i
			((counter++))
		fi

		number=$(( number / i ))
	done
done

echo "${array[@]}"
