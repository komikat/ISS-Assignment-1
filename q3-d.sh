#!/bin/bash

filename=$1
count=1
while read line;
do
    words="$(echo $line | wc -w)"
    echo "$count - $words"
    ((count++))
done < quotes.txt
