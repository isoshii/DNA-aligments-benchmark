#!/bin/bash
start=$(date +"%T")
for f in *.afa; do mafft --maxiterate 1000 --localpair "$f" > Res"$f"; done
echo "===================================================================================================================================================================================================================="
finTime=$(date +"%T")
echo "Current time : $start"
echo "Current time : $finTime"
