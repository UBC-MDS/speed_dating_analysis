"This script takes the cleaned data set and plots a violin plot that captures the distribution of the self- vs other-ratings for one of five attributes (attractive, sincere, intelligent, fun, ambitious).

Usage: 05-group_comparison_violin_plot.R --self_score=<self_score> --other_score=<other_score>
" -> doc

library(docopt)
library(here)
library(tidyverse)
source(paste0(here(), "/R/group_comparison_violin_plot.R"))

opt <- docopt(doc)

cleaned_data <- read.csv(paste0(here(), '/output/data/cleaned_data.csv'))

plot <- group_violin_plot(cleaned_data, opt$self_score, opt$other_score)
saveRDS(plot, file = 'output/figures/group_comparison_violin_plot.RDS')


