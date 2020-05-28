#! /bin/bash -x

read -p "enter a number" n

for ((i=2;$i<=$n;i++))
do
      val=$(($n % $i))
      while [ $val -eq 0 ]
      do
      n=$(( $n / $i ))
      val=$(($n % $i))
      prime[ (count++) ]=$(($i))
      done
done
echo ${prime[@]}
echo ${!prime[@]}
