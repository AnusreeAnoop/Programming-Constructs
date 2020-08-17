#!/bin/bash -x

#check if digits in a number are repeated
#from 10-100
for (( count=10;count<100;count++ ))
do
	#check divisibility by 11
	if [[ $(( $count%11 )) -eq 0 ]]
	then
		#add the number in array
		array[index++]=$count
	fi
done

#print the array containing numbers which are repeated twice
echo "Numbers who have repeated digits=" ${array[@]}
