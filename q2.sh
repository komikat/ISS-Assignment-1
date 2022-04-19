#!/bin/bash
#

touch speech.txt
while read line;
do
    if [ "$line" != "" ]; then

        author=${line#*~}
        quoteReal=${line%~*}

        echo "$author once said “$quoteReal”" >> speech.txt
    fi
done < quotes.txt
