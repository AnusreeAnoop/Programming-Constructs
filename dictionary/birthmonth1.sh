#!/bin/bash -x

declare -A birthMonthDictionary

a=b=c=d=e=f=g=h=i=j=k=l=1

#store birth month of 50 individuals
individual=1

while [[ $individual -lt 51 ]]
do
	year=$(( RANDOM%2+1992))
	month=$(( RANDOM%12+1 ))

	birthMonth=$month"/"$year

	birthMonthDictionary[$individual]=$birthMonth
	case $month in
			1) Jan[ ((a++)) ]=$individual ;;
			2) Feb[ ((b++)) ]=$individual ;;
			3) Mar[ ((c++)) ]=$individual ;;
			4) Apr[ ((d++)) ]=$individual ;;
			5) May[ ((e++)) ]=$individual ;;
			6) Jun[ ((f++)) ]=$individual ;;
			7) Jul[ ((g++)) ]=$individual ;;
			8) Aug[ ((h++)) ]=$individual ;;
			9) Sep[ ((i++)) ]=$individual ;;
			10) Oct[ ((j++)) ]=$individual ;;
			11) Nov[ ((k++)) ]=$individual ;;
			12) Dec[ ((l++)) ]=$individual ;;
	esac

	(( individual++ ))
done

echo "Dictionary = " ${birthMonthDictionary[@]}

#displaying individuals monthwise

echo "Jan="${Jan[@]}
echo "Feb="${Feb[@]}
echo "Mar="${Mar[@]}
echo "Apr="${Apr[@]}
echo "May="${May[@]}
echo "Jun="${Jun[@]}
echo "Jul="${Jul[@]}
echo "Aug="${Aug[@]}
echo "Sep="${Sep[@]}
echo "Oct="${Oct[@]}
echo "Nov="${Nov[@]}
echo "Dec="${Dec[@]}



