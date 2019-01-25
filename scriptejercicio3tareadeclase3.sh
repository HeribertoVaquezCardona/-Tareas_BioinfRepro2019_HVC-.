#!/bin/bash
#This script download 5 secuences and counts "TGCA" in each secuence.
#This script does not use loop but it works
#Heriberto VC January, 2019

#Download 5 secuences and make a file with each secuence
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=BV154480.1" > secuencia1.txt
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=BV154492.1" > secuencia2.txt
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=BV154469.1" > secuencia3.txt
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=BV154458.1" > secuencia4.txt
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=BV154446.1" > secuencia5.txt

##Search how many times "TGCA" is in the each secuence
grep -c "TGCA" *secuencia?.txt



##descarga con loop: for i in ID1 ID2
##Intento con loop:
#for i in BV154480.1 BV154492.1 BV154469.1 BV154458.1 BV154446.1
#> curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=$i" > $i/secuencia.txt; done
