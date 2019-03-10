#!/bin/bash
for i in *.afa; do echo "mscore -cftit $i ResresFile$i > final${i%.afa}.txt"; done
