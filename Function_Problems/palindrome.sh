#! /bin/bash -x
read -p "enter a number :" a

function palin (){
    local num=$1
    while [ $num -gt 0 ]
    do
      b=$(( $num % 10 ))
      c="$c""$b" 
      num=$(( $num / 10 ))
    done
   echo $c
}



c=$(palin $a)
if [[ $c -eq $a ]];
then
echo  "this is palindrome"
else echo "this is not palindrome"
fi
