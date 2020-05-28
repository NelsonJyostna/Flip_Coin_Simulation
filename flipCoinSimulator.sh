#!/bin/bash -x


Heads=0
Tails=1



count=0
A=0
B=0
c=10

while [ $count ]
   fliping_coin=$((RANDOM%2))
do
    if [ $fliping_coin -eq $Heads ]
     then
         echo " Heads = $A "
            ((A++))
    elif [ $fliping_coin -eq $Tails ]
     then
         echo " Tails = $B "
            ((B++))
    fi
       ((count++))
done

