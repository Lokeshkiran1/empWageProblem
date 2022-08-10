#!/bin/bash -x
partTime=1
fullTime=2
empRatePerHour=20
maxHoursMonth=8
numWorkingDays=2
totalEmpHours=0
totalWorkingDays=0
dailyWage=();
function workHours() {

         case $randomCheck in
                $fullTime)
                        empHours=8
                        ;;
                $partTime)
                        empHours=4
                        ;;
                *)
                        empHours=0
                        ;;
        esac
        echo $empHours

}

function getEmpWage(){
	local empHr=$1;
	echo $(($empHr*$empRatePerHour))
}

while [[ $totalEmpHours -lt $maxHoursMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        randomCheck=$((RANDOM%3))
        empHours=$( workHours $randomCheck )
        totalEmpHours=$(($totalEmpHours+$empHours))
	dailyWage[$totalWorkingDays]=$( getEmpWage $empHours ) 

done
monthlyWage=$(($totalEmpHours * $empRatePerHour));
echo ${dailyWage[*]}
