#! /bin/bash -x
read -p "enter a number" n
end=100
start=0
   value=$(( $start + $send ))
   mid=$(( $value / 2 ))
echo "$mid"
   while [ $n!=$n ];
   do
    value=$(( $start + $end ))
    mid=$(( $value/2 ))

    if [[ $mid -ge $n ]];
    then
       start=$(( $mid+1 ))
   elif [[ $mid -le $n ]];
   then   
    end=$(( $mid-1 ))
   else
      echo $mid
   fi
   done
   echo $mid
