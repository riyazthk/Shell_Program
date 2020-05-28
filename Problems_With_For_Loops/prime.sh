#! /bin/bash -x
read -p "enter a number" a

   if [[ ($a -gt 1) && ($a -eq 2 || $a -eq 3 || $a -eq 5) ]];
   then
   echo "$a is a prime number"
   elif [[ $a%2 -eq 0 || $a%3 -eq 0 || $a%5 -eq 0 ]];
   then
   echo "$a is not a prime number"
   elif  [[ $a -gt 0 ]];
   then
    var=$(($a / 5))
       for ((i=1;$i<$var;i++))
          do
            va=$(($i * $i))
            if [[ $va -eq $a ]];
            then
               echo "$a is not a prime number"
               break;
            fi
          done
   else echo "$a is a prime number"
   fi
