#! /bin/bash -x
read -p "enter a number :" a
   for ((i=1;$i<=$a;i++))
   do
      if [[ $i -eq 1 ]];
      then
         harmonic=1
      else
         echo "1 / $i | bc -l"
         harmonic=$(( $harmonic +  (1 / $i) ))
      fi
   done
   
