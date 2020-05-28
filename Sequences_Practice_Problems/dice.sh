#! /bin/bash -x

var=$(( RANDOM%10 )) 
if [[ $var>6 ]]
then
va=$(( $var-6 ))
echo $va
else
echo $var
fi
