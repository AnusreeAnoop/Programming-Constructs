#!/bin/bash -x

#read date and month from user
read -p "Enter date" date
read -p "Enter month" month

#check if the enterd values are between March 20 and June 20
if [[ $month = "March" ]]
then
	if [[ $date -gt 19 && $date -lt 31 ]]
	then
		echo "true"
	else
		echo "false"
	fi
elif [[ $month = "April" ]]
then
	if [[ $date -gt 0 && $date -lt 32 ]]
	then
		echo "true"
	else
		echo "false"
	fi
elif [[ $month = "May" ]]
then
	if [[ $date -gt 0 && $date -lt 31 ]]
	then
		echo "true"
	else
		echo "false"
	fi
elif [[ $month = "June" ]]
then
	if [[ $date -gt 0 && $date -lt 21 ]]
	then
		echo "true"
	else
		echo "false"
	fi
else
	echo "false"
fi
