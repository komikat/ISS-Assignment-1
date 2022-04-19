#/bin/bash

filename=$1
size="$(wc -c <"$filename")"
echo $size
