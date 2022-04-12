#!/bin/bash
## script to filter genotype data

plink="$HOME/Downloads/plink"
prj_folder="$HOME/Documents/ciampolini/ginevra_fiori/risultatiembarkdellanostracaninacloe"
input_file="raw_data/31211050208214" ##transposed ped files
output="Analysis/geno_filtered"

## dogs: 39 chromosomes (38 autosomes)
## 5% and 10% max missing rate
## no duplicates

## read data
echo "processing file ${prj_folder}/${input_file}"
$plink --dog --tfile "${prj_folder}/${input_file}" --geno 0.05 --mind 0.10 --chr 1-38 --bp-space 1 --snps-only --recode --out $output

echo "DONE!"

