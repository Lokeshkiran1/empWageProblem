#!/bin/bash -x
fullTime=1
partTime=2
empRatePerHr=20
totalEmpHr=0
maxHoursMonth=16
maxWorkDay=2
totalWorkDayEmp=0
while [[ $totalEmpHr -lt $maxHoursMonth && $totalWorkDayEmp -lt $maxWorkDay ]]
do
	((totalWorkDayEmp++))
	empAtt=$((RANDOM%3))
	case $empAtt in
		$fullTime)
			EmpHr=8;;
		$partTime)
			EmpHr=4;;
		 *)
			EmpHr=0;;
	esac
	totalEmpHr=$(($totalEmpHr+$EmpHr))
done
monthlyWage=$(($totalEmpHr*$empRatePerHr))

