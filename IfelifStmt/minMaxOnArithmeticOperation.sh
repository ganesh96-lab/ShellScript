#! /bin/bash

#Enter 3 numbers and do arithmatic operation and find min max
# Here give input
read -p 'Enter value for a:' a
read -p 'Enter value for b:' b
read -p 'Enter value for c:' c

# here find out Expression Result
resExp1=$(( $a + $b * $c ))
resExp2=$(( $a % $b + $c ))
resExp3=$(( $c + $a / $b ))
resExp4=$(( $a * $b + $c ))

# here print Expression Result
echo "Expression 1: "$resExp1
echo "Expression 2: "$resExp2
echo "Expression 3: "$resExp3
echo "Expression 4: "$resExp4

# here find max on expression
echo "Maximum Result of Expression............................................................................."
if [[ $resExp1 -gt $resExp2 && $resExp1 -gt $resExp3 && $resExp1 -gt $resExp4 ]]
then
   echo "First expression is maximum"

elif [[ $resExp2 -gt $resExp1 && $resExp2 -gt $resExp3 && $resExp2 -gt $resExp4 ]]
then
   echo "Second expression is maximum"

elif [[ $resExp3 -gt $resExp1 && $resExp3 -gt $resExp2 && $resExp3 -gt $resExp4 ]]
then
   echo "Third expression is maximum"

elif [[ $resExp4 -gt $resExp1 && $resExp4 -gt $resExp2 && $resExp4 -gt $resExp3 ]]
then
   echo "Four expression is maximum"

else
	echo "all are equal"
fi

echo " "

# here find min on expression
echo "Minimum Result of Expression............................................................................."

if [[ $resExp1 -lt $resExp2 && $resExp1 -lt $resExp3 && $resExp1 -lt $resExp4 ]]
then
   echo "First expression is minimum"

elif [[ $resExp2 -lt $resExp1 && $resExp2 -lt $resExp3 && $resExp2 -lt $resExp4 ]]
then
   echo "Second expression is minimum"

elif [[ $resExp3 -lt $resExp1 && $resExp3 -lt $resExp2 && $resExp3 -lt $resExp4 ]]
then
   echo "Third expression is minimum"

elif [[ $resExp4 -lt $resExp1 && $resExp4 -lt $resExp2 && $resExp4 -lt $resExp3 ]]
then
   echo "Four expression is minimum"

else
   echo "all are equal"
fi

