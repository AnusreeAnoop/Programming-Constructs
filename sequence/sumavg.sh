#!/bin/bash

#Variables
sum=0
avg=0

#Use loop to find 5 random 2 digit values and add them
for (( count=0;count<5;count++ ))
do
	num=$(( RANDOM%90+10 ))
	echo $num
	sum=$(($num +$sum))
done
echo $sum
avg=$(($sum/5))
echo $avg
