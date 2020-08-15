#!/bin/bash 

#declare variables
count=1
TAIL=0
HEAD=0

#condition
while [[ count -gt 0 ]]
do
	#store the flip value
	flip=$((RANDOM%2))
	if [[ $flip -eq 0 ]]
	then
		#increment value when head occures
		(( HEAD+=1 ))
		#break if head got repeated 11times
		if [[ $HEAD -eq 11 ]]
		then
			echo "HEAD WINS"
			break
		fi
	else
		#increment value when tail occurs
		(( TAIL+=1 ))
		#break the loop if tail got repeated 11 times
		if [[ $TAIL -eq 11 ]]
		then
			echo "TAIL WINS"
			break
		fi
	fi
(( count++ ))

done

#print number of times the coin was flipped
echo "Total flips="$count
