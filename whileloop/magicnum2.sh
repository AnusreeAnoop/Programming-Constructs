#!/bin/bash -x
high=100
low=0
guess=1
n=$(( $(($high+$low)) /2 ))

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

		else
			high=$n
			n=$(($(($high+$low))/2))
		fi

	else
		echo"Invalid input"
	fi
	(( guess++ ))
done
