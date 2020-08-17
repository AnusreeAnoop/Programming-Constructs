#!/bin/bash -x

#declare variable
count=0

#generate 10 random variable
while [[ count -lt 10 ]]
do
	#store it in array
	Number[ $count ]=$(( RANDOM%900+100))
	(( count++ ))
done

#print the array elements
echo ${Number[@]}

#declare variables
big=99
small=1000


#check for 2nd largest and 2nd smallest element in array
for value in `echo ${Number[@]}`
do
	if [[ $value -gt $big ]]
	then
		sec_big=$big
		big=$value
	fi
	if [[ $value -lt $small ]]
	then
		sec_small=$small
		small=$value
	fi
done

#print 2nd largest and smallest numbers in array
echo $sec_big "second largest number"
echo $sec_small "second smallest number"
