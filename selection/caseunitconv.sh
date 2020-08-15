#!/bin/bash

#read  a value to be converted
read -p "Enter length value" length

#conversation options
echo "1 Feet to Inch"
echo "2 Inch to Feet"
echo "3 Feet to Meter"
echo "4 Meter to Feet"

#read option and perform conv.
read -p "Enter option number: " num
case $num in
	1) inch=`echo $length*12 | awk -F* '{print $1*$2}'`
	   echo $inch;;
	2) feet=`echo $length/12 | awk -F/ '{print $1/$2}'`
	   echo $feet;;
	3) meter=`echo $length/3.281 | awk -F/ '{print $1/$2}'`
	   echo $meter;;
	4) feet=`echo $length*3.281 | awk -F* '{print $1/$2}'`
	   echo $feet;;
	*) echo "Invalid option"

esac
