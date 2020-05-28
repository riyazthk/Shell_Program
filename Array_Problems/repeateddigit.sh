#! /bin/bash -x

for ((i=1;$i<100;i++))
do
  if [[ $i -gt 10 ]]
  then
  a=$(($i))
     while [ $a -gt 0 ];
     do
     c[ (counter++) ]=$(( $a%10 ))
     a=$(( $a/10 ))
     done
  counter=0
  fi
  if [[ ${c[0]} -eq ${c[1]} && $i -gt 10 ]]
  then
  val[ (count++) ]=$(($i))
  fi
done
echo ${val[@]}
