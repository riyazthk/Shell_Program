#! /bin/bash -x
read -p "enter a number :" a
count=0

   for ((i=0;$i<$a;i++))
   do
   val[ (count++) ]=$(( RANDOM%1000 ))
    value=$(( ${val[count]} ))
      if [[ $value -lt 100 ]];
      then
         val[ (count) ]=$(($value+100))
      fi
 done

max1=$(( ${val[0]} ))
max2=$(( ${val[1]} ))

  for ((i=0;$i<=$a;i++))
 do
   val=$((${val[i]}))
   if [[ $val -gt $max1 ]];
   then
      max1=$(($val))
    fi
   done 
 for ((i=0;$i<=$a;i++))
 do
    values=$((${val[i]}))
    if [[ $values -gt $max2 && $values -lt $max1 ]];
    then
      max2=$(($values))
     fi
 done
min1=$(( ${val[0]} ))
min2=$(( ${val[1]} ))

  for ((i=0;$i<=$a;i++))
 do
   va=$((${val[i]}))
   if [[ $va -lt $min1 ]];
   then
      min1=$(($val))
    fi
   done
 for ((i=0;$i<=$a;i++))
 do
    valu=$((${val[i]}))
    if [[ $valu -lt $min2 && $valu -gt $min1 ]];
    then
      min2=$(($valu))
     fi
 done
echo $max1
echo $max2
echo $min1
echo $min2
echo ${val[@]}
echo ${!val[@]}
