#! /bin/bash -x
read -p "enter a number :" b

function prime (){
    local a=$1
    if [[ ($a -gt 1) && ($a -eq 2 || $a -eq 3 || $a -eq 5) ]];
   then
   echo $a 
   elif [[ $a%2 -eq 0 || $a%3 -eq 0 || $a%5 -eq 0 ]];
   then
   echo "$a is not a prime number palindrome"
   exit 0
   elif  [[ $a -gt 0 ]];
   then
    var=$(($a / 5))
       for ((i=1;$i<$var;i++))
          do
            va=$(($i * $i))
            if [[ $va -eq $a ]];
            then
               echo "$a is not a prime palindrome" 
               exit 0
            fi
          done
   else echo $a 
   fi
}

function palindrome(){
 local num=$1
    while [ $num -gt 0 ]
    do
      d=$(( $num % 10 ))
      c="$c""$d" 
      num=$(( $num / 10 ))
    done
   echo $c
}
p=$(prime $b)
c=$(palindrome $b)
if [[ $c -eq $b ]];
then
echo  "this is prime palindrome"
else echo "this is not prime palindrome"
fi
