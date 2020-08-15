#!/bin/bash 

#read number to find its factors
read -p "Enter a number" N

#check diviibility starting from 2 
for (( count=2;count<N;count++ ))
do

	if [[ $(( $N%$count )) -eq 0 ]]
	then
		echo $count
		#return the quotient 
		N=$(( $N/$count ))
	fi
done

