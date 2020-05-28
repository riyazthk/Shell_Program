#! /bin/bash -x

read -p "enter a number :" a
fact=1
   for ((i=1;i<=$a;i++))
   do
     fact=$(($fact * $i))
   done
echo "$fact"
