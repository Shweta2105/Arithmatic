#!/bin/bash -x

echo "Enter the first Number"
read a
echo "Enter the second Number"
read b
echo "Enter the third Number"
read c
result1=$(($a+($b*$c)))
result2=$((($a*$b)+$c))
result3=$(($c+($a/$b)))
result4=$((($a%$b)+$c))
echo "$a+$b*$c= $result1"
echo "$a*$b+$C= $result2"
echo "$c+$a/$b= $result3"
echo "$a%$b+$c= $result4"
declare -A test_var
test_var['key1']=$result1
test_var['key2']=$result2
test_var['key3']=$result3
test_var['key4']=$result4
echo ${test_var[key1]}
echo ${test_var[key2]}
echo ${test_var[key3]}
echo ${test_var[key4]}
counter=0
Array[((counter++))]=$result1
Array[((counter++))]=$result2
Array[((counter++))]=$result3
Array[((counter++))]=$result4
echo ${Array[@]}
echo "Original Numbers in array:"
for (( i = 0; i <= 3; i++ ))
    do
      echo ${Array[$i]}
    done

for (( i = 0; i <= 3; i++ ))
do
   for (( j = $i; j <= 3; j++ ))
   do
      if [ ${Array[$i]} -lt ${Array[$j]} ]
		then
       t=${Array[$i]}
       Array[$i]=${Array[$j]}
       Array[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in Descending Order:"
for (( i=0; i <= 3; i++ )) 
do
  echo ${Array[$i]}
done

for (( i = 0; i <= 3; i++ ))
do
   for (( j = $i; j <= 3; j++ ))
   do
      if [ ${Array[$i]} -gt ${Array[$j]} ]
		 then
       t=${Array[$i]}
       Array[$i]=${Array[$j]}
       Array[$j]=$t
      fi
   done
done

echo -e "\nResult sorted in asecending order :"
for ((i=0; i<=3; i++ ))
do
	echo ${Array[$i]}
done
