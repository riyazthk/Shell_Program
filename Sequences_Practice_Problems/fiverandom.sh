#! /bin/bash -x

read -p "Enter a number of random number print :" va
sum=0
a=10
for ((i=0;i<$va;i++));
do
   if [[ $var<1000 && $var>=100 ]];
     then
        var=$(( $var%10 ))
  elif [[ $var>=10 && $var<100 ]];
     then
         var=$(( $var ))
 fi

  var=$(( RANDOM%100 ))
  sum=$(( $sum + $var ))

done 

echo "Sum of five random two digit number :" $sum
average=$(( $sum/$va ))
echo "Averae of five random two digit number :" $average

