# bioinformatics-sample

My project at HMS was centered around copy number variant (CNV) calling from ATAC-seq data. I curated all of my datasets, and benchmarked the CNV calling pipeline on different read depths to inform dataset and sample selection. This is a sample of some of the scripts I wrote to downsample the original cell line data used by the creators of the CNV caller and compare the downsampled calls to ground truth events. 

The final visualization notebook creates figures demarcated with a dotted line that represents a depth level characteristic of many promising samples collected with similar assays. Based on these results, I excluded these datasets and studies from the rest of my project. 

## Workflow
* Perform basic qc on the original cell line data to determine original depth and exclude artifacts, multiplets, etc. (not shown)
* Downsample the original cell line data and keep only real cell barcodes (shown in "scripts" folder)
* Perform CNV calling on all downsampled data (not shown)
* Compare downsampled CNV calls to ground truth and visualize (shown in "analysis" folder)
