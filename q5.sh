#!/bin/bash

read inp

echo $inp | rev

echo $inp | rev | tr a-yA-Y b-zB-Z

length=${#inp}
half1=$((length/2))
((length++))
half2=$half1
((half2++))
begin=1

a=`echo $inp | cut -c $begin-$half1 | rev`
b=`echo $inp | cut -c $half2-$length`

echo $a$b
