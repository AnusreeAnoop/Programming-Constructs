sum=0
avg=0
for (( count=0;count<5;count++ ))
do
	num=$(( RANDOM%90+10 ))
	echo $num
	sum=$(($num +$sum))
done
echo $sum
avg=$(($sum/5))
echo $avg
