#!/bin/bash
start=$(date +"%T")
for f in *.afa; do muscle -in "$f" -out Res"$f" -maxiters 1 -diags; done
echo "============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================"
finTime=$(date +"%T")
echo "Current time : $start"
echo "Current time : $finTime"

