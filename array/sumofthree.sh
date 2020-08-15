#!/bin/bash 

#read number of elements in the array
read -p "Enter size of array" size

#read the array elements
for (( count=0;count<$size;count++ ))
do
	read -p "Enter integer" integer
	array[$count]=$integer
done

#print array
echo "array= "${array[@]}

#check if sum of any 3 numbers in array gives zero

#take a number from array
for (( i=0;i<$size-2;i++))
do
	#take second number
	for (( j=i+1;j<$size-1;j++ ))
	do
		#take the third number
		for (( k=j+1;k<$size;k++ ))
		do
			#check if sum of these 3 numbers equals 0
			if [[ $(( ${array[i]}+${array[j]}+${array[k]} )) -eq 0 ]]
			then
				echo "Sum of " ${array[i]}","${array[j]}","${array[k]}" gives zero"
			fi
		done
	done
done
