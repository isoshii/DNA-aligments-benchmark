#!/bin/sh
rm -f mscore_new.txt
for i in  {1..6}; do
	echo "##### ref$i.fa tst$i.fa #####" >> mscore_new.txt
	../mscore -cfiqt ref$i.fa tst$i.fa >> mscore_new.txt
done
diff mscore_std.txt mscore_new.txt
if [ $? -ne 0 ]; then exit 1; fi
rm -f mscore_new.txt
