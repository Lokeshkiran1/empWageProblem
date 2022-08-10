#!/bin/bash -x
isFullTime=1;
isPartTime=2;
empRatePerHr=20;
empAtt=$((RANDOM%3));
case $empAtt in
	$isFullTime)
		empHrs=8
		;;
	$isPartTime)
		empHrs=4
		;;
	*)
		empHrs=0
		;;
esac
echo "dailyWage=$(($empHrs*empRatePerHr))";
