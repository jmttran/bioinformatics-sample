#!/bin/bash

#SBATCH -p medium
#SBATCH -A park
#SBATCH -t 1-02:00
#SBATCH -e jobout/downsample_%j.err
#SBATCH -o jobout/downsample_%j.out
#SBATCH -c 20
#SBATCH --mem=20G

cellranger-atac count --id=SNU_downsample_01 --subsample-rate=0.1 --reference=/home/jut268/julie/scATAC-seq_CNV_project/cellranger-atac/refdata-cellranger-arc-GRCh38-2020-A-2.0.0 --fastqs=/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/fastq
cellranger-atac count --id=SNU_downsample_02 --subsample-rate=0.2 --reference=/home/jut268/julie/scATAC-seq_CNV_project/cellranger-atac/refdata-cellranger-arc-GRCh38-2020-A-2.0.0 --fastqs=/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/fastq
cellranger-atac count --id=SNU_downsample_03 --subsample-rate=0.3 --reference=/home/jut268/julie/scATAC-seq_CNV_project/cellranger-atac/refdata-cellranger-arc-GRCh38-2020-A-2.0.0 --fastqs=/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/fastq
cellranger-atac count --id=SNU_downsample_04 --subsample-rate=0.4 --reference=/home/jut268/julie/scATAC-seq_CNV_project/cellranger-atac/refdata-cellranger-arc-GRCh38-2020-A-2.0.0 --fastqs=/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/fastq
cellranger-atac count --id=SNU_downsample_05 --subsample-rate=0.5 --reference=/home/jut268/julie/scATAC-seq_CNV_project/cellranger-atac/refdata-cellranger-arc-GRCh38-2020-A-2.0.0 --fastqs=/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/fastq
cellranger-atac count --id=SNU_downsample_06 --subsample-rate=0.6 --reference=/home/jut268/julie/scATAC-seq_CNV_project/cellranger-atac/refdata-cellranger-arc-GRCh38-2020-A-2.0.0 --fastqs=/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/fastq
cellranger-atac count --id=SNU_downsample_07 --subsample-rate=0.7 --reference=/home/jut268/julie/scATAC-seq_CNV_project/cellranger-atac/refdata-cellranger-arc-GRCh38-2020-A-2.0.0 --fastqs=/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/fastq
cellranger-atac count --id=SNU_downsample_08 --subsample-rate=0.8 --reference=/home/jut268/julie/scATAC-seq_CNV_project/cellranger-atac/refdata-cellranger-arc-GRCh38-2020-A-2.0.0 --fastqs=/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/fastq
cellranger-atac count --id=SNU_downsample_09 --subsample-rate=0.9 --reference=/home/jut268/julie/scATAC-seq_CNV_project/cellranger-atac/refdata-cellranger-arc-GRCh38-2020-A-2.0.0 --fastqs=/home/jut268/julie/scATAC-seq_CNV_project/data/SNU601/fastq
