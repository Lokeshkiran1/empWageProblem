#!/bin/bash -x
isPresent=1
empAtt=$((RANDOM%2))
if [ $empAtt -eq $isPresent ]
then
	WagePerHr=20
	TimeEmp=8
	echo dailySalary=$(( $WagePerHr * $TimeEmp))
else
	echo dailSalary=0;
fi

