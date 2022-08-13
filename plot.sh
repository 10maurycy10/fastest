#!/bin/bash
./all.sh &> file && awk '/#/ {lang=$0;} /real/ {print $2,lang;}' < file | python plot.py
