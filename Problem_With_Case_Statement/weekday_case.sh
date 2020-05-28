#! /bin/bash -x
read -p "Enter a number :" a
week=(sunday monday tuesday wednesday thrusday friday saturday)
if [[ $a -ge 0 && $a -lt 7 ]];
then 
   case $a in
   0) echo ${week[0]} ;;
   1) echo ${week[1]} ;;  
   2) echo ${week[2]} ;;   
   3) echo ${week[3]} ;;
   4) echo ${week[4]} ;;
   5) echo ${week[5]} ;;   
   6) echo ${week[6]} ;;
   esac
else 
  echo "ivalid number"
fi
