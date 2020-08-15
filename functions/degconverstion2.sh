#!/bin/bash -x
function deg_conversion() 
{
	case $option in
		1)
		read -p "Enter value between 32-212 F" value
		degC=`echo $value - 32 * 0.56 | awk '{ if( $1>32 && $1<212 ) print $(( $1"-"$3"*"$5 ))  }'` 
		echo $degC ;;
		2)
		read -p "Enter value between 0-100 C" value
		echo $value
		decF=`echo$value * 1.8 + 32 | awk  '{ if( $1>0 && $1<100 ) print $1"*"$3"+"$5  }'` 
		echo $decF ;;
		*)
		echo "Invalid option" ;;
	esac
}

echo "Conversion Selection"
echo "1. Fahrenheit to Celsius"
echo "2. Celsius to Fahrenheit"
read -p "Enter option" option

deg_conversion


