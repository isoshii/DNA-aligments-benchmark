#!/bin/sh
rm -f fas_new.txt
for i in  {1..6}; do
	echo "##### ref$i.fa #####" >> fas_new.txt
	../fas -aihl ref$i.fa >> fas_new.txt
done
diff fas_std.txt fas_new.txt
if [ $? -ne 0 ]; then exit 1; fi
rm -f fas_new.txt
