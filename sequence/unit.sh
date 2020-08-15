#!/bin/bash

#variable inch and feet declaration 
inch=42
feet=1

echo "inch="$inch

#convert inch to feet
feet=`echo $inch/12 | awk -F/ '{print $1/$2}'`

echo $inch "inch is equall to "$feet" ft."

#Rectngular plot variable in feet
length=60
breadth=40

echo "length in feet="$length
echo "breadth in feet="$breadth

#feet to meter conversion
length_meter=`echo $length*0.305 | awk -F* '{print $1*$2}'`
echo "length in meter="$length_meter
breadth_meter=`echo $breadth*0.305 | awk -F* '{print $1*$2}'`
echo "breadth in meter="$breadth_meter

#calculate area of rectangulr plot
area=`echo $length_meter*$breadth_meter |awk -F* '{print $1*$2}'`
echo "rectangular plot area="$area"msq"

