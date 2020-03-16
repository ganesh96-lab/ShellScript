#! /bin/bash -x

# WAP to read five three-digit random no and print min max
low=100
high=999
diff=high-low

random1=$((RANDOM%diff))
randomNo1=$((random1+low))

random2=$((RANDOM%diff))
randomNo2=$((random2+low))

random3=$((RANDOM%diff))
randomNo3=$((random3+low))

random4=$((RANDOM%diff))
randomNo4=$((random4+low))

random5=$((RANDOM%diff))
randomNo5=$((random5+low))

echo $randomNo1
echo $randomNo2
echo $randomNo3
echo $randomNo4
echo $randomNo5

if [[ $randomNo1 -gt $randomNo2 && $randomNo1 -gt $randomNo3 && $randomNo1 -gt $randomNo4 && $randomNo1 -gt $randomNo5 ]]
then
	echo "randomNo1 is greatest : "$randomNo1
elif [[ $randomNo2 -gt $randomNo1 && $randomNo2 -gt $randomNo3 && $randomNo2 -gt $randomNo4 && $randomNo2 -gt $randomNo5 ]]
then 
	echo "randomNo2 is greatest : "$randomNo2
elif [[ $randomNo3 -gt $randomNo1 && $randomNo3 -gt $randomNo2 && $randomNo3 -gt $randomNo4 && $randomNo3 -gt $randomNo5 ]]
then
	echo "randomNo3 is greatest : "$randomNo3
elif [[ $randomNo4 -gt $randomNo1 && $randomNo4 -gt $randomNo2 && $randomNo4 -gt $randomNo3 && $randomNo4 -gt $randomNo5 ]]
then
	echo "randomNo4 is greatest : "$randomNo4
elif [[ $randomNo5 -gt $randomNo1 && $randomNo5 -gt $randomNo2 && $randomNo5 -gt $randomNo3 && $randomNo5 -gt $randomNo4 ]]
then
	echo "randomNo5 is greatest : "$randomNo5
else
	echo "all numbers are equal"
fi





echo "----------------------------------------------------------------------------------------------------------------------"

if [[ $randomNo1 -lt $randomNo2 && $randomNo1 -lt $randomNo3 && $randomNo1 -lt $randomNo4 && $randomNo1 -lt $randomNo5 ]]
then
        echo "randomNo1 is smallest : "$randomNo1
elif [[ $randomNo2 -lt $randomNo1 && $randomNo2 -lt $randomNo3 && $randomNo2 -lt $randomNo4 && $randomNo2 -lt $randomNo5 ]]
then 
        echo "randomNo2 is smallest : "$randomNo2
elif [[ $randomNo3 -lt $randomNo1 && $randomNo3 -lt $randomNo2 && $randomNo3 -lt $randomNo4 && $randomNo3 -lt $randomNo5 ]]
then
        echo "randomNo3 is smallest : "$randomNo3
elif [[ $randomNo4 -lt $randomNo1 && $randomNo4 -lt $randomNo2 && $randomNo4 -lt $randomNo3 && $randomNo4 -lt $randomNo5 ]]
then
        echo "randomNO4 is Smallest : "$randomNo4
elif [[ $randomNo5 -lt $randomNo1 && $randomNo5 -lt $randomNo2 && $randomNo5 -lt $randomNo3 && $randomNo5 -lt $randomNo4 ]]
then
        echo "randomNo5 is smallest : "$randomNo5
else
        echo "all numbers are equal"
fi


