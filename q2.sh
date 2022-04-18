#!/bin/bash

while read line;
do
    if [ "$line" != "" ]; then

        author=${line#*~}
        quoteReal=${line%~*}

        echo "$author once said “$quoteReal”"
    fi
done < quotes.txt
