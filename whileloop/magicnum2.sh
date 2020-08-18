#!/bin/bash
#variables
high=100
low=0
guess=1
n=$(( $(($high+$low)) /2 ))

echo "Think of a number between 1-100"


while [[ $guess -gt 0 ]]
do
	echo "Is the number"$n"?(y/n)"
	read ans
	if [[ $ans -eq "y" ]]
	then
		echo "The number is "$n
		break

	elif [[ $ans -eq "n" ]]
	then
		echo "Is the number bigger than" $n "?(y/n)"
		read ans


		if [[ $ans -eq "y" ]]
		then
			low=$n
			n=$(($(($high+$low))/2))


		elif [[ $ans -eq "n" ]]
			high=$n
			n=$(($(($high+$low))/2))

		else
			echo "Invalid input"
		fi

	else
		echo"Invalid input"
	fi
	(( guess++ ))
done
