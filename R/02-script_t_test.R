
"This script to perform t test on two columns of a data frame

Usage: script_t_test.R --filename=<filename> --colname1=<colname1> --colname2=<colname2> --method=<method> --output=<output>
" -> doc



library(here)
library(tidyverse)
library(docopt)
source(paste0(here(),'/R/t_test.R'))
opt <- docopt(doc)

main <- function(filename,col1,col2,version,output_file) {
  # read in data 
  data <- read_csv(filename,show_col_types = FALSE)
  saveRDS(our_t_test(data,!!sym(col1),!!sym(col2),version),file=output_file)

}

main(opt$filename,opt$colname1,opt$colname2,opt$method,opt$output)

