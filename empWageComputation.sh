#! /bin/bash -x

#EXPLICIT DECLARATION OF ARRAY
declare -a dailywages

#constant values
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_WAGE_PER_HR=20
MAX_WORKING_DAY=20
MAX_WORKING_HOURS=80

function getWorkHrs(){
        local empCheck=$1
        case $empCheck in
                $IS_PRESENT_FULL_TIME)
                                empHrs=8 ;;
                $IS_PRESENT_HALF_TIME)
                                empHrs=4 ;;
                *)              empHrs=0 ;;
        esac
        echo $empHrs
}

#variable
totalWorkingHours=0
day=1

while [ $day -le $MAX_WORKING_DAY ] && [ $totalWorkingHours -le $MAX_WORKING_HOURS ]
do
        #variable
        empCheck=$(( RANDOM % 3 ))
        # call function
        empHrs="$( getWorkHrs $empCheck )"
        #((day++))
        #calculation
        totalWorkingHours=$(( totalWorkingHours + empHrs ))
        salary=$(( empHrs * EMP_WAGE_PER_HR ))
        dailywages[((day++))]=$salary
done
totalSalary=$(( totalWorkingHours * EMP_WAGE_PER_HR ))

echo "Monthly salary of person $totalSalary"

echo salary:${dailywages[*]}

