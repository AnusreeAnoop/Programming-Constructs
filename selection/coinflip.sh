#!/bin/bash -x

#flip a coin and store value
flip=$((RANDOM%2))

#if flip value equals 0 then its head, if 1 then its tail
if [[ $flip -eq 0 ]]
then
	echo "HEAD"
else
	echo "TAIL"
fi
