#! /bin/bash -x

#print primes on given range

#Ask user to enter start value
read -p "Enter starting point : " start
#Ask user to enter end value of range
read -p "Enter ending point : " end
flag=0;
# Traverse each number in between range
# with the help of for loop
for (( i=$start; i<=$end; i++ ))
do
	flag=0;

	#Skip 0 and 1 as they are
        #niether prime nor composite
	if [ $i -eq 0 ] || [ $i -eq 1 ]
	then
		continue;
	fi

	for (( j=2; j<$i; j++ ))
	do
		if [ $(( $i % $j )) -eq 0 ]
		then

        # flag variable to tell
        # if i is prime or not
			flag=1;
			break;
		fi

	done

	#flag = 0 means i is prime
   	# and flag = 1 means i is not prime
	if [ $flag -eq 0 ]
	then
		echo $i
	fi
done
