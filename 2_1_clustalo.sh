#!/bin/bash
start=$(date +"%T")
for f in *.afa; do clustalo -i "$f" -o Res"$f" -v; done
echo "===================================================================================================================================================================================================================="
finTime=$(date +"%T")
echo "Current time : $start"
echo "Current time : $finTime"