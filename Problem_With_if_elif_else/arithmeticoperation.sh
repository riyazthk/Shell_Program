#! /bin/bash -x

read -p "Enter a first number :" a
read -p "Enter a second number:" b
read -p "Enter a third number :" c
declare -a cal

cal[0]=$(( $a + $b * $c ))
cal[1]=$(( $a % $b + $c ))
cal[2]=$(( $c + $a / $b ))
cal[3]=$(( $a * $b + $c ))
max=${cal[0]}
min=${cal[0]}
len=${#cal[@]}
for ((i=0;$i<$len;i++));
do
   if [ ${cal[i]} -gt $max ];
   then
   max=${cal[i]} 
   fi
done
for ((i=0;i<len;i++));
do
   if [ ${cal[i]} -lt $min ];
   then
   min=${cal[i]}
   fi
done
echo $max
echo $min
