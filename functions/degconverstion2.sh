#!/bin/bash -x

#function to perform conversion 
function deg_conversion() 
{
	case $option in

		1) #Fahrenheit to Celsius conversion

		#read value in Fahrenheit
		read -p "Enter value between 32-212 F" value

		#formula C=F-32*5/9
		degC=`echo $value-32 | awk -F- '{print $1-$2}'` 
		degC=`echo $degC*0.56 | awk -F* '{print $1*$2}'`

		#display value in Celsius
		echo $degC ;;

		#Celsius to Fahrenheit conversion


		2) #Celsius to Fahrenheit conversion

		#read value in Celsius
		read -p "Enter value between 0-100 C" value
		echo $value

		#formula F=C*9/5+32
		decF=`echo $value*1.8 | awk -F* '{ print $1*$2 }'`
		decF=`echo $decF+32 | awk -F+ '{print $1+$2}'` 

		#display value in Fahrenheit
		echo $decF ;;

		*)
		echo "Invalid option" ;;
	esac
}

echo "Conversion Selection"

#print the conversion options available
echo "1. Fahrenheit to Celsius"
echo "2. Celsius to Fahrenheit"

#read option
read -p "Enter option" option

#call the function to perform task
deg_conversion


