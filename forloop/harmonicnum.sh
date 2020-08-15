#!/bin/bash 


echo "nth harmonic number"

#read number to find its nth harmonic number
read -p "Enter the limit" n

#declare the variable
Harmonic=1
#ind nth harmonic
for (( count=2;count<=n;count++ ))
do
	value=`echo 1/$count | awk -F/ '{print $1/$2}' `
	Harmonic=`echo $Harmonic+$value | awk -F+ '{print $1+$2}'`

done


echo Harmonic=`echo $Harmonic | awk '{print $1}'`

