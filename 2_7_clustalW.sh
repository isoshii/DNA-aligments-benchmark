#!/bin/bash
start=$(date +"%T")
for f in *.afa; do clustalw -INFILE="$f" >Res"$f"; done
echo "===================================================================================================================================================================================================================="
finTime=$(date +"%T")
echo "Current time : $start"
echo "Current time : $finTime"
