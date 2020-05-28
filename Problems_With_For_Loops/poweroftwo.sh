#! /bin/bash -x
read -p "enter a number" a
for ((i=0;i<a;i++))
do
   if [[ $i -eq 0 ]]
   then
      result=1
   else
      result=$(($result * 2))
   fi
done
echo $result
