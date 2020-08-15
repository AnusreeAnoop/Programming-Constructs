#!/bin/bash

#function to check if the number is prime
function primecheck() {
	flag=0
	for (( count=2; count<=$num/2; count++ ))
	do
		if [[ $((num%count)) -eq 0 ]]
		then
			flag=1
			break
		fi
	done
}
#function to check if number is a pallindrome
function palindrome() {
	rev=0
	n=$num
	while [ $num -gt 0 ]
	do
		remainder=$(( $num%10 ))
		rev=$(( $rev*10+$remainder ))
		num=$(( $num/10 ))
	done
	if [ $rev -eq $n ]
	then
		echo $n "is palindrome"
	else
		echo $n "not a pallindrome"
	fi
}

#read a number
read -p "Enter a number" num

#call the function to check if number is prime
primecheck

#check the flag value
if [[ $flag -eq 0 ]]
then
        echo $num "Prime number"
	#if the number is prime then check if the number is a pallindrome
	#call function to check palindrome
	palindrome
else
	echo $num "Not a prime number"
fi

