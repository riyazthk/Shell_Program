#! /bin/bash -x
read -p "Enter a number" a
echo "1.convert feet to inch"
echo "2.convert feet to meter"
echo "3.convert inch to feet"
echo "4.convert meter to feet"
read -p "enter conversion type :" b
case $b in
1) echo c=$(($a * 12))
   echo $c ;;
2) echo c=$(($a / 3))
   echo $c ;;
3) echo c=$(($a / 12))
   echo $c ;;
4) echo c=$(($a * 3))
   echo $c ;;
esac
