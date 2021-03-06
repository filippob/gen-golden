#!/bin/bash
## script to calculate ROH

plink="$HOME/Downloads/plink"
prj_folder="$HOME/Documents/ciampolini/ginevra_fiori"
input_file="Analysis/geno_filtered" ##transposed ped files
output="Analysis/roh"

## read data
echo "processing file ${prj_folder}/${input_file}"
## --ibc not usable --> only one dog !!
$plink --dog --file "${prj_folder}/${input_file}" --homozyg  --homozyg-het 2 --homozyg-snp 25 --homozyg-kb 100 --homozyg-density 100 --homozyg-gap 500 --out $output

echo "DONE!"

