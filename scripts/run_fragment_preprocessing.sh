#!/bin/bash

#SBATCH -p short
#SBATCH -A park
#SBATCH -t 06:00:00
#SBATCH -e jobout/fragment_preprocessing_%j.err
#SBATCH -o jobout/fragment_preprocessing_%j.out
#SBATCH -c 4
#SBATCH --mem=64G

source activate /home/jut268/.conda/envs/epianeufinder

script_path="/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/scripts/fragment_preprocessing.R"
fragment_file_path="/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/my_cellranger_counts/outs/fragments.tsv"
fragment_output_dir="/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/fragment_subsets/"
filter_cells=TRUE
cellranger_output_dir="/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/my_cellranger_counts/outs/" # only need this if you're trying to filter; otherwise can leave empty

Rscript $script_path $fragment_file_path $fragment_output_dir $filter_cells $cellranger_output_dir 