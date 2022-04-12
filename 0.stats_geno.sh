#!/bin/bash

plink="$HOME/Downloads/plink"
prj_folder="$HOME/Documents/ciampolini/ginevra_fiori/risultatiembarkdellanostracaninacloe"
input_file="raw_data/31211050208214" ##transposed ped files
output="Analysis/stats"

## read data
echo "processing file ${prj_folder}/${input_file}"
$plink --dog --tfile "${prj_folder}/${input_file}" --missing --freq --out $output

echo "DONE!"

