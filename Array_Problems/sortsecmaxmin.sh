#! /bin/bash -x
read -p"enter a number :" a
for ((i=0;$i<$a;i++))
do
 val[ (count++) ]=$((RANDOM%1000))
done

for ((i=0;$i<$a;i++))
do
   va=$(( ${val[i]} ))
   for ((j=i;$j<$a;j++))
   do
     value=$(( ${val[j]} ))
        if [[ $va -gt $value ]]
        then
           temp=$va
           va=$(($value))
           value=$(($temp))
        fi
       val[(i)]=$(($va))
       val[(j)]=$(($value))
   done
done
echo ${val[@]}
for ((i=0;$i<$a;i++))
do
   if [[ $i -eq $a-2 ]]
   then
      max2=$(( ${val[i]} ))
   fi
   if [[ $i -eq 1 ]]
   then
      min2=$(( ${val[i]} ))
   fi
done
echo $max2 
echo $min2
