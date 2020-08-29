/****************************************
#*
#*Purpose : To compute some calculations and store result in dictionary
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

declare -A result
i=0

read -p "Enter 3 Integers: " n1 n2 n3
echo "Number 1: $n1"
echo "Number 2: $n2"
echo "Number 3: $n3"

val1=$((n1+n2*n3)) ;
val2=$((n1*n2+n3)) ;
val3=$((n3+n1/n2)) ;
val4=$((n1%n2+n3)) ;

result["1"]="$val1"
result["2"]="$val2"
result["3"]="$val3"
result["4"]="$val4"

echo ${result[@]}

for n in ${result[@]}
{
	array[i]=$n;
	i=$((i+1));
	}

echo ${array[@]}

echo "Ascending order is ="$(printf '%s\n' "${array[@]}" | sort -nu)
echo "Descending order is ="$(printf '%s\n' "${array[@]}" | sort -nr)
