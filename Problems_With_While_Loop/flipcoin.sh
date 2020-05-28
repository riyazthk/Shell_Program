#! /bin/bash -x
win=0
head=0
tail=0
while [ $win != 11 ]
do
val=$(( RANDOM%2 ))
case $val in
$head) ((win++)) ;;
$tail) ((win++)) ;;
esac
done
