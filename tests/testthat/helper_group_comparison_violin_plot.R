library(tidyverse)
library(ggplot2)
source(paste0(here(), "/R/group_comparison_violin_plot.R"))
source(paste0(here(),"/tests/testthat/helper_clean_speed_dating_dat.R"))

group_plot <- group_violin_plot(df, self_score = attr5_1, other_score = attr_other_rating)