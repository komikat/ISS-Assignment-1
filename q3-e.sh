#!/usr/bin/env bash

grep -wo '[[:alnum:]]\+' quotes.txt | sort | uniq -c
