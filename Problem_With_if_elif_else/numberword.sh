#! /bin/bash -x

day=(zero one two three four five six seven eight nine)
read -p "Enter a number :" a
if [ $a -lt 10 ];
then
   for ((i=0;i<$a+1;i++));
   do
   if [ $i -eq $a ];
   then
   echo ${day[i]}
   fi
   done
else
echo "invalid number"
fi
