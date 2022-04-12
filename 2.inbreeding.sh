#!/bin/bash
## script to calculate inbreeding

plink="$HOME/Downloads/plink"
prj_folder="$HOME/Documents/ciampolini/ginevra_fiori"
input_file="Analysis/geno_filtered" ##transposed ped files
output="Analysis/inbreeding"

## read data
echo "processing file ${prj_folder}/${input_file}"
## --ibc not usable --> only one dog !!
$plink --dog --file "${prj_folder}/${input_file}" --het small-sample --out $output
$plink --dog --file "${prj_folder}/${input_file}" --recode A --out Analysis/geno_filtered ## matrix format

echo "DONE!"

