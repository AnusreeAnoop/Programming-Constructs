#!/bin/bash

#add two dice number
sum=$(($((RANDOM%6+1)) + $((RANDOM%6+1))))

#print the sum
echo $sum
