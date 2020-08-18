#!/bin/bash

#declare the variable
count=1

#print the power table of 2 until 256 is reached
while [[ count -gt 0 ]]
do
	power=$(( 2**$count ))
	echo "2 power"$count=$power
	if [[ $power -eq 256 ]]
	then
		break
	fi
#increment the variable
(( count++ ))
done
