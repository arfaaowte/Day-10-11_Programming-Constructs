#****************************************
#*
#*Purpose : To flip coin,compute winner and display the number of times coin has flipped.
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
i=0;

declare -A singlet

while [	$count_heads -ne 21 -a $count_tails -ne 21 ]
do
FLIP=$(($(($RANDOM%10))%2))
        if [ $FLIP -eq 1 ];then
                value="heads"
                count_heads=$((count_heads+1))
        else
                value="tails"
                count_tails=$((count_tails+1))
        fi

	singlet[$i]=$value;
	i=$((i+1))
done
	echo $count_heads
	echo $count_tails
	echo ${singlet[@]}
