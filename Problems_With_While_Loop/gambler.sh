#! /bin/bash -x
rupees=100
bet=0
win=0
while [ $rupees -gt 0 ]
do
   val=$((RANDOM%2))
   if [[ $val -eq 0 && $rupees -le 200 ]];
   then
     bets=$((bet++))
      wins=$((win++))
      rupees=$((rupees + 10))
   else
      bets=$((bet++))
      rupees=$((rupees - 10))
   fi
done
echo "number of bets made $bets"
echo "number of times won $wins"
