#!/bin/bash

filename=$1
grep -wo '[[:alnum:]]\+' $filename | sort | uniq -c
