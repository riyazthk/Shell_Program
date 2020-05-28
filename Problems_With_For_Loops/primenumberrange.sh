#! /bin/bash -x
read -p "enter a number :" a

   for ((i=2;$i<=$a;i++))
   do
      count=0
      for ((j=2;$j<=$i;j++))
      do
        if [[ $i%$j -eq 0 ]]
        then
          $((count++))
         fi
      done
         if [[ count -lt 2 ]]
         then
            echo "$i"
         fi
   done

