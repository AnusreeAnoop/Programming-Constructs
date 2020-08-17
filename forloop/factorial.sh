#!/bin/bash

echo "Factorial"

#read a number to find its factorial
read -p "Enter a number" num

#declare the variable
factorial=1

#find factorial and store it in variable
for (( count=2;count<=num;count++ ))
do
	factorial=$(( $factorial*$count ))

done

#disply
echo $num"!="$factorial
