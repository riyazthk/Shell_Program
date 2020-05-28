#! /bin/bash -x

read -p "Enter a number :" a 
tenses=(unit ten hundred thousand lakh core)
length=${#a}
b=1
if [[ $a>0 ]];
then
for ((i=1;i<$length;i++));
do
b=$(( $b * 10 ))
done
fi
if [[ $a -eq 1 || $a -eq $b ]];
then
 for ((i=0;i<$length;i++));
 do
    if [[ $i -eq $length-1 ]];
    then
    echo ${tenses[i]}
    fi
 done
else
echo "invalid number"
fi
