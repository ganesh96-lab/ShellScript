#!/bin/bash -x

#Problem Statement : Take a number from user and check if the number is a Prime then show
							#that its palindrome is also prime
#Author : Ganesh Ghodke
#Date : 15-03-2020


read -p "Enter number : " number
reverse=0
function checkPrime(){

num=$1
flag=0
for (( i=2; i<$num; i++ ))
do
	if [ $(($num % $i)) -eq 0 ]
	then
		flag=1
		break
	fi
done
	if [ $flag -eq 0 ]
	then
		echo " $num  is prime"
	else
		echo "$num is not prime"
	fi


}

function checkPalindromicPrime(){
num=$1

	while [ $num -ne 0 ]
	do
		reminder=$(( $num % 10 ))
		reverse=$(( $(( $reverse * 10 )) + $reminder ))
		num=$(( $num / 10 ))
	done

	checkPrime $reverse
}

checkPrime $number
checkPalindromicPrime $number
