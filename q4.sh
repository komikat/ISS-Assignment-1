#!/bin/bash

read list
list="$(echo "$list" | tr , " ")"
arr=(`echo $list`)

length=${#arr[@]}
for (( i=0; i<$length; i++ ))
do
    for (( j=0; j<$length; j++ ))
    do
        if [[ ${arr[i]} -lt ${arr[j]} ]]
        then
            temp=${arr[i]}
            arr[$i]=${arr[j]}
            arr[$j]=$temp
        fi
    done
done

echo ${arr[*]}
