#!/bin/bash

#variable
count=0

#generate 10 random variables and store in array
while [[ count -lt 10 ]]
do
	Number[ $count ]=$(( RANDOM%900+100))
(( count++ ))
done

#print array values
echo ${Number[@]}

#sort the values inside array
for (( i=0;i<10;i++ ))
do
	for (( j=$i+1;j<=10;j++ ))
	do
		if [[ ${Number[$i]} -gt ${Number[$j]} ]]
		then
			value=${Number[$i]}
			Number[$i]=${Number[$j]}
			Number[$j]=$value
		fi

	done

done
#print the sorted array
echo"sorted array= " ${Number[@]}

#print 2nd largest and smallest numbers in array
echo "Second smallest number in array = "${Number[2]}
echo "Second largest number in array = "${Number[9]}
