#!/bin/bash

#read the number to find its factors
read -p "Enter a number" num

#find factors starting from 2
for (( count=2;count<num;count++ ))
do

        if [[ $(( $num%$count )) -eq 0 ]]
        then
		#store the factors in array
		array[count++]=$count
                num=$(( $num/$count ))
        fi
done

#print the array consisting of factors
echo "Factors are = "${array[@]}


