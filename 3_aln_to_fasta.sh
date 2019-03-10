#!/bin/bash
ls *.aln | parallel "seqret {} {.}.fasta"
