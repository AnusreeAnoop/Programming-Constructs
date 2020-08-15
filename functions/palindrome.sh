#!/bin/bash -x

#function to check palindrome
function palindrome(){
	#store the number in another variable
	n=$num
	#varibale to store the reverse of number
	rev=0
	
	#reverse the number using loop
	while [ $num -gt 0 ]
	do
		#get the unit place digit
        	remainder=$(( $num%10 ))
		#store the remainder in variable rev 
        	rev=$(( $rev*10+$remainder ))
		#return quotient of the number
        	num=$(( $num/10 ))

	done
	#check if reversed number is same as original number
	if [ $rev -eq $n ]
	then
        	echo $n "is palindrome"
	else
        	echo $n "is not palindrome"
	fi



}

#read a palindrome number
read -p "Enter a number" num
#call the function
palindrome
