#! /bin/bash -x
read -p "enter a number :" a
count=0
value=0
while [ $count -le $a ]
do
  if [[ $count -gt 0 && $value -le 256 ]];
  then
     value=$(($value * 2 ))
     echo $value
     $((count++))
  elif [[ $count -lt 1 && $value -le 256 ]];
  then
     value=1
     echo $value
     $((count++))
  else
     break
  fi
done
