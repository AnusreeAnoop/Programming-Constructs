#!/bin/bash

#read the number to find its factors
read -p "Enter a number" N

#find factors starting from 2
for (( count=2;count<N;count++ ))
do

        if [[ $(( $N%$count )) -eq 0 ]]
        then
		#store the factors in array
		array[count++]=$count
                N=$(( $N/$count ))
        fi
done

#print the array consisting of factors
echo "Factors are = "${array[@]}


