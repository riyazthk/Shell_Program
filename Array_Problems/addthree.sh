#! /bin/bash -x
for ((i=0;$i<3;i++))
do
  read -p "enter a value :" a[count++]
done

for ((i=0;$i<3;i++))
do
sum=$(( $sum + ${a[i]}   ))
done

  if [[ $sum -eq 0 ]];
  then
     echo "sum of three digit number is $sum"
  else
     echo "sum of three digit not equal to zero"
  fi
