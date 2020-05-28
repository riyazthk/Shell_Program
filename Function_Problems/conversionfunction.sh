#! /bin/bash -x
echo "convert celsius to farenheit-1"
echo "convert farenheit to celsius-2"
read -p "enter a conversion type" a
read -p "enter a value" b

function convert (){
       local num=$1
       local num=$2
case $1 in
1)  if [[ (b -ge 0 && b -le 100) ]];
    then
    conversion=$(( $2 * (9/5) + 32 ))
    echo "$conversion" 
    else
       echo "invalid data"
    fi
            ;;
2) if [[ (b -ge 32 && b -le 212) ]];
   then
   conversion=$(( ($2 - 32) * 5/9 ))
   echo "$conversion" 
   else echo "invalid data"
   fi
              ;;
esac
}

  conversion=$(convert $a $b)
