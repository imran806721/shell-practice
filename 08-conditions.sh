#!/bin/bash

NUMBER=$1

# gt - greater than
# lt - less than
# eq - equal
# ne - not equal
# ge - greater than or equal
# le - less than or equal

if [ $NUMBER -gt 20 ]; then
    echo "Given number $NUMBER is greater to 20"
elif [ $NUMBER -eq 20 ]; then
    echo "Given number $NUMBER is equal to 20"
else
    echo "Given number $NUMBER is less than 20"
fi



# number1=10
# number2=20

# if [ $NUMBER2 -gt 10 ]; then
#     echo " prime number is $Number ";
# else
#    echo " prime is n
# fi


#!/bin/bash

num=17
count=0

## 1/1 -> 0
## 2/1, 2/2 -> 0
## 3/1, 3/3 -> 0
## 4/1, 4/2, 4/4 -> 0
## 5/1, 5/5 -> 0

for ((i=1; i<=num; i++))
do
    if (( num % i == 0 ))
    then
    count=$((count + 1 ))
    fi
if ((count == 2 ))
then 
    echo "$num is prime number"
    else
    echo "$num is not prime number"
fi