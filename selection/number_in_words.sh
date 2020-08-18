#!/bin/bash

#read number and store it
read -p "Enter a single digit number" num

#check if entered number is single digit, if then print in words
if [[ $num -eq 0 ]]
then
	echo "Zero"
elif [[ $num -eq 1 ]]
then
	echo "One"
elif [[ $num -eq 2 ]]
then
	echo "Two"
elif [[ $num -eq 3 ]]
then
	echo "Three"
elif [[ $num -eq 4 ]]
then
	echo "Four"
elif [[ $num -eq 5 ]]
then
	echo "Five"
elif [[ $num -eq 6 ]]
then
	echo "Six"
elif [[ $num -eq 7 ]]
then
	echo "Seven"
elif [[ $num -eq 8 ]]
then
	echo "Eight"
elif [[ $num -eq 9 ]]
then
	echo "Nine"

#if number is not single digit
else
	echo "Invalid number"
fi
