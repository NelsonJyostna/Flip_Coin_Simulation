#!/bin/bash -x

Heads=0
Tails=1

count=1
A=0
B=0
c=50
a=0
b=0

while [ $count -le $c ]
do
   fliping_coin=$((RANDOM%2))
    if [ $fliping_coin -eq $Heads ]
     then
           ((A++))
         echo "Heads = $A "
           if [ $A -eq 21 ]
           then
              a=1
              break
           fi
     elif [ $fliping_coin -eq $Tails ]
     then
          ((B++))
         echo "Tails = $B "
          if [ $B -eq 21 ]
          then
            b=1
            break
          fi
    fi
    ((count++))
done

if [ $a -eq 1 ]
then
  echo "Winner Heads Won by $A"
  echo "Difference = $(($A-$B))"
elif [ $b -eq 1 ]
then
  echo "Winner Tails Won by $B"
  echo "Difference = $(($B-$A))"
fi
