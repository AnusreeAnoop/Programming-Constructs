#!/bin/bash -x

#variable declaration
max=0
min=999

#read 5 random 3 digit value
for ((count=0;count<5;count++))
do
	num=$(( RANDOM%900+100 ))
	echo $num
	
	#check wether the value is min or max store it
	if [ $num -gt $max ]
	then
		max=$num
	fi
	if [ $num -lt $min ]
	then
		min=$num
	fi
done

#display min and max values
echo $max "max value"
echo $min "min value"
