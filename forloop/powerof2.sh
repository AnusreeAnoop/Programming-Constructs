#!/bin/bash

echo "Powers of 2"

#read the power
read -p "Enter the limit" n

#calculate from 1 to nth power
for (( count=1;count<=n;count++ ))
do
	echo $(( 2**$count ))

done
