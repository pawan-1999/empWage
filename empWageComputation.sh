#!/bin/bash -x

echo "Welcome to empcomputation"
empcheck=$(( RANDOM % 2 ))

# selection
if [ $empcheck -eq $IS_PRESENT ]
then
      echo "employee is present"
else
      echo "employee is absent"
fi
