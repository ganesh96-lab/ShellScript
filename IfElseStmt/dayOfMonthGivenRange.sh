#! /bin/bash -x

# WAP to find day of month is between the given range
day=$1
month=$2

echo $day
echo $month


if [[ $month -eq 3 && $day -ge 20 && $day -le 31 ]]
 then 
	echo "true"
elif [[ $month -eq 4 && $day -ge 1 && $day -le 30 ]]
 then
	echo "true"
elif [[ $month -eq 5 && $day -ge 1 && $day -le 31 ]]
 then
	echo "true"

elif [[ $month -eq 6 && $day -ge 1 && $day -le 20 ]]
 then
	echo "true"
else
	echo "false"
fi
