#!/bin/bash

filename=$1
words="$(wc -w <$filename)"
echo $words
