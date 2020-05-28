#! /bin/bash -x
digit=(zero one two three four five six seven eight nine ten)
read -p "Enter a number :" a
if [[ $a -ge 0 && $a -lt 10 ]];
then
   case $a in
    0) echo ${digit[0]} ;;
    1) echo ${digit[1]} ;;
    2) echo ${digit[2]} ;;
    3) echo ${digit[3]} ;;
    4) echo ${digit[4]} ;;
    5) echo ${digit[5]} ;;
    6) echo ${digit[6]} ;;
    7) echo ${digit[7]} ;;
    8) echo ${digit[8]} ;;
    9) echo ${digit[9]} ;;
   esac
else
echo "invalid number"
fi 
