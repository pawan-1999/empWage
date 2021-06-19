#! /bin/bash/ -x

# constant
IS_PRESENT=1
EMP_WAGE_PER_HR=20

# variable
empCheck=$(( RANDOM % 2 ))

# selection
if [ $empCheck -eq $IS_PRESENT ]
then
        empHrs=8
else
        empHrs=0
fi

# calculation
salary=$(( empHrs * EMP_WAGE_PER_HR ))
