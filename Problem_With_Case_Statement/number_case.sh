#! /bin/bash -x
read -p "Enter a number" a
word=(unit ten hundred thousand lakh core)
len=${#a}
b=1
for ((i=1;i<len;i++));
do
b=$(( $b * 10))
done
if [[ $a -eq 1 || $a -eq $b ]];
then
case $a in
1) echo ${word[0]} ;;
10) echo ${word[1]} ;;
100) echo ${word[2]} ;;
1000) echo ${word[3]} ;;
10000) echo ${word[4]} ;; 
100000) echo ${word[5]} ;;
esac
else echo "invalid number"
fi
