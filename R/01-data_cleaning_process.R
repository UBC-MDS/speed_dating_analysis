
"This script takes the raw data for the speed dating analysis and outputs a cleaned data file.

Usage: 01-data_cleaning_process.R <file_path>
" -> doc

library(docopt)
library(here)
library(tidyverse)
source(paste0(here(), "/R/clean_speed_dating_dat.R"))

opt <- docopt(doc)


main <- function(file_path){
  raw <- read.csv(file_path)
  cleaned_df <- clean_speed_dating_dat(raw)
  write_csv(cleaned_df, paste0(here(), "/output/data/cleaned_data.csv"))
}

main(opt$file_path)