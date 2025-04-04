# bioinformatics-sample

My project at HMS was centered around copy number variant (CNV) calling from scATAC-seq data. I personally curated all of my datasets from NCBI GEO, and benchmarked the CNV calling pipeline on different read depths to inform dataset and sample selection. This is a subset of some of the scripts I wrote to downsample the original cell line data used by the creators of the CNV caller and compare the downsampled calls to ground truth events. 

The final downsampling visualization notebook creates figures demarcated with a dotted line that represents a depth level characteristic of many promising samples collected with similar assays that I had found. Based on these results, I excluded those datasets and studies from the rest of my project. 

To show more downstream analysis, I also included a notebook visualizing results for a brain sample.

## Workflow encompassed by this repo:
* Perform basic qc on the original cell line data to determine appropriate downsampling levels and exclude artifacts, multiplets, etc. (not shown)
* Downsample the original cell line data (shown in "scripts" folder)
* Filter out artifactual cell barcodes (not shown)
* Perform CNV calling on all downsampled data (not shown)
* Compare downsampled CNV calls to ground truth and visualize (shown in "analysis" folder)
* Apply calls to selected samples and perform additional analysis on clonal CNV events (not shown)
* Visualize (Brain sample shown in "Brain" folder)
