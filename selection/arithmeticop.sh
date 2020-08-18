#!/bin/bash

#read 3 numbers
read -p "Enter a num" num1
read -p "Enter a num" num2
read -p "Enter a num" num3

#do arithmetic operation
operation1=$(( $num1+$num2*$num3 ))
echo "operation1:" $num1"+"$num2"*"$num3=$operation1

operation2=$(( $num1%$num2+$num3 ))
echo "operation2:"$num1"%"$num2"+"$num3=$operation2

operation3=$(( $num3+$num1/$num2 ))
echo "operation3:"$num3"+"$num1"/"$num3=$operation3

operation4=$(( $num1*$num2+$num3 ))
echo "operation4:"$num1"*"$num2"+"$num3=$operation4

#check which operation gives maximum value
if [[ $operation1 -gt $operation2 && $operation1 -gt $operation3 ]]
then
	echo "operation1 maximum"

elif [[ $operation2 -gt $operation1 && $operation2 -gt $operation3 ]]
then
	echo "operation2 maximum"

else
	echo "operation3 maximum"
fi

#check which operation gives minimum value
if [[ $operation1 -lt $operation2 && $operation1 -lt $operation3 ]]
then
	echo "operation1 minimum"

elif [[ $operation2 -lt $operation1 && $operation2 -lt $operation3 ]]
then
	echo "operation2 minimum"

else
	echo "operation3 minimum"
fi
