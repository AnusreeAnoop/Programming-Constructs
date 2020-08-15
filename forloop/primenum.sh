#!/bin/bash -x
read -p "Enter a number" num
#flag variable
flag=0
#running a loop from 2 to num/2
for (( count=2; count<=$num/2; count++ ))
do
        #check if count is factor of num
        if [ $((num%count)) -eq 0 ]
        then
                flag=1
                break
        fi
done

#check flag value
if [ $flag -eq 0 ]
then
        echo $num "is a prime number"
else
        echo $num "not a prime number"
fi
