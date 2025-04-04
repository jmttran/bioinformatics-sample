library(dplyr)
library(data.table)

args = commandArgs(trailingOnly=TRUE)

fragment_file_path = args[1]
fragment_output_dir = args[2]
filter_cells = args[3]
cellranger_output_dir = args[4]

# read in fragment table
print("reading in fragments table")
SNU_fragments = fread(paste0(fragment_file_path), sep = '\t')

# filter out all bad cell calls
print("filtering cell artifacts...")
if (filter_cells) {
  # read in the cell metadata file
  cell_qc_tbl = read.table(paste0(cellranger_output_dir, "/singlecell.csv"), sep = ',', header=TRUE)
  
  # get list of barcodes that pass qc
  cell_tbl = cell_qc_tbl %>% filter(cell_qc_tbl$is__cell_barcode == 1)
  cell_barcodes = unique(cell_tbl$barcode)

  # filter fragments that come from cells passing qc
  SNU_fragments = SNU_fragments %>% filter(V4 %in% cell_barcodes)
}
print("splitting fragment file...")

SNU_groups = unique(SNU_fragments$V4)

dir.create(fragment_output_dir)

# get number of subsets
num_cells = 1000
num_groups = floor(length(SNU_groups)/num_cells)
print(paste0("there are ", num_groups, " groups!"))
# subset each dataframe separately
if (num_groups > 0) {
  
  for (i in 1:num_groups) {
  print(i)
  barcode_list = SNU_groups[(((i-1)*num_cells)+1):(i*num_cells)]
  SNU_subset = SNU_fragments %>% filter(V4 %in% barcode_list) 
  SNU_subset = SNU_subset[, 1:5] %>% write.table(file=paste0(fragment_output_dir, i, "_fragments.tsv"), quote=FALSE, sep='\t', row.names=FALSE, col.names=FALSE)
  }
  
}

# leftovers
barcode_list = SNU_groups[((num_groups*num_cells)+1):length(SNU_groups)]
SNU_subset = SNU_fragments %>% filter(V4 %in% barcode_list) 
SNU_subset = SNU_subset[, 1:5] %>% write.table(file=paste0(fragment_output_dir, 0, "_fragments.tsv"), quote=FALSE, sep='\t', row.names=FALSE, col.names=FALSE)
