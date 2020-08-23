#!/bin/bash

#extended glob
shopt -s extglob

#read firstname
read -p "Enter First name" firstname
pattern="^([A-Z]{1}[a-z]{3,})$"

if [[ $firstname =~ $pattern ]]
then
	echo $firstname "Valid"
else
	echo $firstname "Error. Invalid firstname"
fi

#read lastname
read -p "Enter Last name" lastname
pattern="^[A-Z]{1}[a-z]{2,}$"

if [[ $lastname =~ $pattern ]]
then
	echo $lastname "Valid"
else
	echo $lastname "Error. Invalid lastname"
fi

#read email id
read -p "Enter email id" email
pattern="^[a-z]{3,}[.\+\-]?[a-z0-9]+@[a-z]{3,}[0-9]?\.(co.|com|net)?(.in|.au|.net|.com)?$"

if [[ $email =~ $pattern ]]
then
	echo $email "valid id"
else
	echo $email "invalid id"
fi

#mobile number
read -p "Enter mobile number" number
pattern="^[0-9]{2}[  ][1-9]{1}[0-9]{9}$"

if [[ $number =~ $pattern ]]
then
	echo $number "valid number"
else
	echo $number "invalid number"
fi

#creating password
echo "Create a password"
echo"Your password should"
echo "1.be minimum 8 characher"
echo "2.have at least 1 upper case"
echo "3.have at least 1 numeric number"
echo "4.have one special character(!,@,#,$,^,&,*)"
echo "All rules must be followed"

read -p "Enter password: " password
pattern="^([a-z]+[A-Z]+[0-9]+[\!\@\#\$\^\&\*]+){8,}$"

if [[ $password =~ $pattern ]]
then
	echo $password "Valid password"
else
	echo $password "Invalid password"
fi
