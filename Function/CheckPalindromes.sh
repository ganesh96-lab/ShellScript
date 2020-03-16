\#!/bin/bash -x

read -p "Enter first numbers" number1
read -p "Enter second number" number2

reverse=0
function palindrome(){
	number=$1
	tempnum=$number

		while [[ $tempnum -ne 0 ]]
		do
			reminder=$(( $tempnum % 10 ))
			reverse=$(( $reverse * 10 + $reminder ))
			tempnum=$(( $tempnum / 10 ))
		done

		if [ $reverse -eq $number2 ]
		then
			echo "Both number are palindrome"
		else
			echo "not palindrome"
		fi
}

palindrome $number1
