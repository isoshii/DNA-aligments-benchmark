#!/bin/bash
for f in *.afa; do probcons "$f" > Res"$f"; done
echo "===================================================================================================================================================================================================================="
