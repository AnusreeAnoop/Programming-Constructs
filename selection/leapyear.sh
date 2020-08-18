#!/bin/bash

#read year
read -p "Enter a year" year

#check if entered year is a leap year or not
#check entered year is 4 digit number
if [[ ${#year} -eq 4 ]]
then
	#year should be divisible by 4
	if [[ $(($year%4)) -eq 0 ]]
	then
		#should not be divisible by 100
		if [[ $(($year%100)) -ne 0 ]]
		then
			echo $year "is a leap year"
		else
			#if divisible by 100 then year should be divisible by 400
			if [[ $(($year%400)) -eq 0 ]]
			then
				echo $year "is a leap year"
			else
				echo $year "not a leap year"
			fi
		fi
	else
		echo $year "not a leap year"
	fi
else
	echo "invalid year"
fi
