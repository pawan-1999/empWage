#! /bin/bash -x

#constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_WAGE_PER_HR=20
MAX_WORKING_DAY=20
MAX_WORKING_HOURS=100

#variable
totalWorkingHours=0
day=1

while [ $day -le $MAX_WORKING_DAY ] && [ $totalWorkingHours -le $MAX_WORKING_HOURS ]
do
        #variable
        empCheck=$(( RANDOM % 3 ))

        #selection
        case $empCheck in
                $IS_PRESENT_FULL_TIME)
                        empHrs=8 ;;
                $IS_PRESENT_HALF_TIME)
                        empHrs=4 ;;
                *)      empHrs=0 ;;
        esac
        (( day++))
        #calculation
        totalWorkingHours=$(( totalWorkingHours + empHrs ))
        salary=$(( empHrs * EMP_WAGE_PER_HR ))
done
totalSalary=$(( totalWorkingHours * EMP_WAGE_PER_HR ))

