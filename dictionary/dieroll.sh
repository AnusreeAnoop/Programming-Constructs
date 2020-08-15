#!/bin/bash 
#declare the variable
roll=1
a=b=c=d=e=f=0

#roll the die untill a number repeats itself 11times
while [[ $roll -gt 0 ]]
do
	#array created to store the die numbers
	declare -i die
	#die roll value
	value=$((RANDOM%6+1))
	#store in array
	die[count++]=$value

	#count the numbers repeated
	case $value in
		1) (( a++ ))
		  if [[ $a -eq 10 ]]
		  then
			break
		  fi ;;
		2) (( b++ ))
                  if [[ $b -eq 10 ]]
                  then
                        break
                  fi ;;

		3) (( c++ ))
                  if [[ $c -eq 10 ]]
                  then
                        break
                  fi ;;

		4)(( d++ ))
                  if [[ $d -eq 10 ]]
                  then
                        break
                  fi ;;

		5)(( e++ ))
                  if [[ $e -eq 10 ]]
                  then
                        break
                  fi ;;

		6)(( f++ ))
                  if [[ $f -eq 10 ]]
                  then
                        break
                  fi ;;
	esac

	(( roll++ ))
done
#print the array values
echo ${die[@]}
#print maximum repeated number
echo $value "repeated maximum times"

