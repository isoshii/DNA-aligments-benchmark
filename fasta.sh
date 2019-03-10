#!/bin/sh
rm -f fasta_new.txt fasta
cc -DFASTA_TEST ../fasta.c -o fasta
if [ $? -ne 0 ]; then exit 1; fi
./fasta -w50 ref1.fa > fasta_new.txt
diff fasta_std.txt fasta_new.txt
if [ $? -ne 0 ]; then exit 1; fi
rm -f fasta_new.txt fasta
