#!/bin/bash

for file in *.jpg;do
    outfile="results/${file%.*}"
    sudo python script.py "$file" "$outfile"
done
