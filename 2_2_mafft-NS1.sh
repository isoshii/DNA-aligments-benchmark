#!/bin/bash
start=$(date +"%T")
for f in *.afa; do mafft --maxiterate 0 --retree 1 "$f" > Res"$f"; done
echo "===================================================================================================================================================================================================================="
finTime=$(date +"%T")
echo "Current time : $start"
echo "Current time : $finTime"
