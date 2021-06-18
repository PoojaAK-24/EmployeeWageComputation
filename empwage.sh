#/bin/bash -x
echo "Welcome to Employee Wage Computation Problem"

isFullTime=1
isAbsent=0
salaryPerHr=20
totalSalary=0
attendance=$((RANDOM%2))

if [ $attendance -eq $isFullTime ]
then
	fullTimeHr=8
	echo "Employee is Present"
else
	fullTimeHr=0
	echo "Employee is Absent"
fi

totalSalary=$(($totalSalary+($salaryPerHr*$fullTimeHr)))
echo "Salary is: " $totalSalary
