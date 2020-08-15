#!/bin/bash

#read a number
read -p "Enter a number" num

#display the place value
case $num in
	1)echo "Units" ;;
	10)echo "Tens";;
	100)echo "Hundreds";;
	1000)echo "Thousands";;
	10000)echo "Ten Thousands";;
	100000)echo "Lakhs";;
	1000000)echo "Ten Lakhs";;
	*)echo "invalid";;
esac
