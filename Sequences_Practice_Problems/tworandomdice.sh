#! /bin/bash -x
 
var=$(( RANDOM%10 ))
va=$(( RANDOM %10 ))
if [[ $var>6 ]]
then
var=$(( $var-6 ))
fi
if [[ $va>6 ]]
then 
va=$(( $va-6 ))
fi
add=$(( $var+$va ))
echo $add

