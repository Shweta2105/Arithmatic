#!/bin/bash -x

echo "Enter the  three inputs ::"
read a b c

result=$(($a+$b*$c))

echo $result
