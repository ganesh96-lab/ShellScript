#! /bin/bash -x

#problem Statement:Write a Program where a gambler starts with Rs 100 and places Re 1 bet until goal =200.
 							#Keeps track of number of times won and number of bets made.
#Author:Ganesh Ghodke
#Date:14-03-2020


startingMoney=100
goal=200
noOfTimesBet=0
won=0

while [[ $startingMoney -ne 0 && $startingMoney -ne $goal ]]
do
	resultOfBet=$(( RANDOM%2 ))
	if [[ $resultOfBet -eq 1 ]]
	then
		(( won++ ))
		(( startingMoney++ ))
	else
		(( startingMoney-- ))
	fi
	(( noOfTimesBet++ ))
done
if [ $startingMoney -eq 0 ]
then
	echo "broke"
else
	echo "No of time won : "$won
	echo "No of times Bet made : "$noOfTimesBet
fi
