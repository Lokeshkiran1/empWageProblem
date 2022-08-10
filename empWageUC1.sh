#!/bin/bash -x
isPresent=1
empAtt=$((RANDOM%2))
if [ $empAtt -eq $isPresent ]
then
echo " emp present"
else
echo " emp absent"
fi
