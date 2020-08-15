#!/bin/bash
money=100
count=0
won=0
while [[ count -ge 0 ]]
do
	bet=$((RANDOM%2))
	if [[ $bet -eq 0 ]]
	then
		(( money-=1))
		if [[ $money -eq 0 ]]
		then
			echo "No more money"
			break
		fi
	else
		(( money+=1 ))
		(( won+=1 ))
		if [[ $money -eq 200 ]]
		then
			echo "Won!!"
			break
		fi
	fi
	(( count+=1 ))
done
echo "Number of times won= "$won
echo "Number of bets made= "$count
