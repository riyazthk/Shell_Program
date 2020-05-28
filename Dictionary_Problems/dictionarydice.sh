#! /bin/bash -x


declare -A val
   for ((i=0;$i<7;i++))
   do
     dice[ (counter++) ]=0
   done

   for ((i=0;$i<40;i++))
   do
      var=$(( RANDOM%6+1 ))
      count=$(($var))
         dice[ (count) ]=$(( ${dice[count]}+1 ))
          if [[ ${dice[count]} -eq 10 ]]
          then
             break
          fi
   done
echo ${dice[@]}

for i in "${!dice[@]}"
do
echo "$i=>${dice[$i]}"
done
max=$((${dice[1]}))
min=$((${dice[1]}))
   for ((i=1;$i<7;i++))
   do
     if [[ ${dice[i]} -gt $max ]]
     then
        max=$(( ${dice[i]} ))
     fi
     if [[ ${dice[i]} -lt $min ]]
     then
        min=$(( ${dice[i]} ))
     fi
   done
echo $max
echo $min
