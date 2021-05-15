#!/bin/bash -x

echo "Enter the  three inputs ::"
read a b c

result1=$(($a+$b*$c))
echo $result1

result2=$(($a*$b+$c))
echo $result2

result3=$(($c+$a/$b))
echo $result3

result4=$(($a%$b+$c))
echo $result4

declare -A Results
Results[Result1]="( $result1 )"
Results[Result2]="( $result2 )"
Results[Result3]="( $result3 )"
Results[Result4]="( $result4 )"

echo All Computation Results : ${Results[@]}
