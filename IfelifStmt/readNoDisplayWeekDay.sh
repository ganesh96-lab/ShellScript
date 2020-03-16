#! /bin/bash -x


#Variables number denote day
sunday=0
monday=1
tuesday=2
wednesday=3
thrusday=4
friday=5
saturday=6
#Read number and display the week day

read -p 'Enter single digit no:' number
echo $number

if [ $number -eq $sunday ]
then
   echo"sunday"
elif [ $number -eq $monday ]
then
   echo "monday"
elif [ $number -eq $tuesday ]
then
   echo "tuesday"

elif [ $number -eq $wednesday ]
then 
   echo "wednesday"

elif [ $number -eq $thrusday ]
then
   echo "Thrusday"

elif [ $number -eq $friday ]
then
   echo "Friday"

elif [ $number -eq $saturday ]
then
   echo "Saturday"
else
   echo "invalid input"
fi
