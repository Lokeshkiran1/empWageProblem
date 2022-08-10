#!/bin/bash -x
isFullTime=1
isPartTime=2
empWagePerHr=20
empAtt=$((RANDOM%3))
if [ $empAtt -eq $isFullTime ]
then
	empHrs=8;
elif [ $empAtt -eq $isPartTime ]
then
	empHrs=4;
else
	empHrs=0;
fi
echo "dailyEmpWage=$(($empHrs * $empWagePerHr))"
