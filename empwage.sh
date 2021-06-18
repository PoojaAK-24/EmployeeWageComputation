#!/bin/bash -x
isFullTime=1
isAbsent=0
isPartTime=2
FullTimeHr=8
PartTimeHr=4
SalaryPerHr=20
totalSalary=0
attendance=$((RANDOM%3))

case $attendance in 
	1) 
	echo "Full time present"
		;;
	2)
	echo "Part time present"
		;;
	*)
	echo "is absent"
		;;
esac
case $attendance in
	1)
	totalSalary=$(($totalSalary+($SalaryPerHr*$FullTimeHr)))
        	;;
	2)
        totalSalary=$(($totalSalary+($SalaryPerHr*$PartTimeHr)))
		;;
        *)
        totalSalary=0
		;;
esac
echo "Salary is: $totalSalary"
