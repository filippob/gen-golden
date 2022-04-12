#!/bin/bash
## script to calculate inbreeding

plink="$HOME/Downloads/plink"
prj_folder="$HOME/Documents/ciampolini/ginevra_fiori/risultatiembarkdellanostracaninacloe"
input_file="Analysis/geno_filtered" ##transposed ped files
output="Analysis/inbreeding"

## read data
echo "processing file ${prj_folder}/${input_file}"
$plink --dog --file "${prj_folder}/${input_file}" --ibc --out $output

echo "DONE!"

