#!/bin/bash -x
fullTime=1
partTime=2
empRatePerHr=20
numWorDay=2
totalSalary=0
empAtt=$((RANDOM%3))
for (( day=1; day<=$numWorDay; day++ ))
do
	case $empAtt in
		$fullTime)
			empHrs=8;;
		$partTime)
			empHrs=4;;
		*)
			empHrs=0;;
	esac
	dailyWage=$(( $empRatePerHr * $empHrs ))
	totalSalary=$(( $dailyWage + $totalSalary ))  
done
echo $totalSalary
