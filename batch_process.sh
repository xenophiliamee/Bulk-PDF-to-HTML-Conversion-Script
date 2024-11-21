#!/bin/bash

# Directory containing input files
input_dir="./test/"

# Directory for output files
output_dir="./html_output/"

# Ensure output directory exists
mkdir -p "$output_dir"

# Loop through each PDF file in the input directory
for file in "$input_dir"*.pdf; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "Processing $filename..."
        pyamihtmlx PDF --infile "$file" --outdir "${output_dir}${filename}/"
    fi
done
