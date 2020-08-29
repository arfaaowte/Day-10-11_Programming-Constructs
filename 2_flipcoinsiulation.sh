#/****************************************
#*
#*Purpose : To flip coin and compute the number of times heads or tails has won.
#*
#*
#*
#*
#*
#*
#* @author Arfa
#* @since 29/08/2020
#*
#********************************************

#!/bin/bash 

count_heads=0;
count_tails=0;

while [ $count_heads -ne 21 -a $count_tails -ne 21 ]
do
	FLIP=$(($(($RANDOM%10))%2))
	if [ $FLIP -eq 1 ];then
    		value="heads"
		count_heads=$((count_heads+1))
	else
   		value="tails"
		count_tails=$((count_tails+1))
	fi

	echo $value

done

if [ $count_heads -gt $count_tails ]
then
	echo "Heads has won by occuring $count_heads times."
	echo "Tails has lost by occuring $count_tails times."
elif [ $count_tails -gt $count_heads ]
then
	echo "Heads has lost by occuring $count_heads times."
	echo "Tails has won by occuring $count_tails times."
else
	echo "Heads : $count_heads"
	echo "Tails : $count_tails"
	echo "It is a tie"
	while [ $((count_heads-count_tails)) -ne 2 ]
	do
	FLIP=$(($(($RANDOM%10))%2))
        if [ $FLIP -eq 1 ];then
                value="heads"
                count_heads=$((count_heads+1))
        else
                value="tails"
                count_tails=$((count_tails+1))
        fi
	done
		
		echo "Heads : "$count_heads
		echo "Tails : "$count_tails
fi
