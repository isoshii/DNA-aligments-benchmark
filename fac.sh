#!/bin/sh
rm -f fac_new.txt
for i in  {1..6}; do
	echo "##### ref$i.fa #####" >> fac_new.txt
	../fac -cgiu -w50 ref$i.fa >> fac_new.txt
done
diff fac_std.txt fac_new.txt
if [ $? -ne 0 ]; then exit 1; fi
rm -f fac_new.txt
