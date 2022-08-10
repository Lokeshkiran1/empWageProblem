#!/bin/bash -x
partTime=1
fullTime=2
empRatePerHour=20
maxHoursMonth=16
numWorkingDays=2
totalEmpHours=0
totalWorkingDays=0

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

while [[ $totalEmpHours -lt $maxHoursMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        randomCheck=$((RANDOM%3))
        empHours=$( workHours $randomCheck )
        totalEmpHours=$(($totalEmpHours+$empHours))

done
monthlyWage=$(($totalEmpHours * $empRatePerHour));
