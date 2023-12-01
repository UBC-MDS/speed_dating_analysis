library(docopt)
library(tidyverse)
source("R/pearson_corr.R")

"This runs the Pearson Test function and exports the result as a data object.

Usage: pearson_script.R <data_path> <col1> <col2> [<alternative>]
" -> doc

opt <- docopt(doc)

main <- function(data, col1, col2, alternative="two.sided") {
  output = pearson_corr(data, col1, col2, alternative)
  saveRDS(output, file = "output/pearson_result.RDS")
}

df = read.csv(opt$data_path)
main(df, opt$col1, opt$col2, opt$alternative)

# Run with Rscript R/03-pearson_process.R output/data/cleaned_data.csv attr_other_rating attr5_1 "greater"