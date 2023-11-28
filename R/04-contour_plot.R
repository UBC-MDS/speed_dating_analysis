
"This script creates a contour plot.

Usage: 04-contour_plot.R  <column1> <column2> <x_lab> <y_lab>
" -> doc

library(docopt)
library(tidyverse)
library(here)
source(paste0(here(), "/R/contour_plot.R"))

opt <- docopt(doc)
dats <- read.csv(paste0(here(), '/output/data/cleaned_data.csv'))

my_plot <- contour_plot_function(dats, opt$column1, opt$column2, opt$x_lab, opt$y_lab)
saveRDS(my_plot, file = 'output/figures/contour_plot.rds')