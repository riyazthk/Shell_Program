#! /bin/bash -x
read -p "Enter a number :" a
week=(sunday monday tuesday wednesday thrusday friday saturday)
if [ $a -lt 6 ];
then
   for ((i=0;i<=6;i++));
   do
      if [ $i -eq $a ];
      then
         echo ${week[i]}
         break;
      fi
   done
else
echo "invalid number"
fi
