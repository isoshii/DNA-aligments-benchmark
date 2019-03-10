#!/bin/sh
rm -f path_new.txt path
cc -DPATH_TEST ../path.c -o path
if [ $? -ne 0 ]; then exit 1; fi
./path > path_new.txt
diff path_std.txt path_new.txt
if [ $? -ne 0 ]; then exit 1; fi
rm -f path_new.txt path
