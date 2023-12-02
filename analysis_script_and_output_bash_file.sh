#!/bin/bash

# Create a process for data cleaning to output a cleaned file with the rated variables of interest (self- vs other-rated attractive, sincere, intelligent, fun, and ambitious)
Rscript R/01-data_cleaning_process.R data/Speed_Dating_Data.csv

# Script for creating a data visualization of a violin plot that compares the distribution of the self- vs other-rated plot
Rscript R/05-group_comparison_violin_plot.R --self_score attr5_1 --other_score attr_other_rating

# Script for conducting a t-test between self- and other-rated attractiveness and saving the outputs
Rscript R/02-script_t_test.R --filename output/data/cleaned_data.csv --colname1 attr_other_rating --colname2 attr5_1 --method diff --output output/ttest_diff.RDS
Rscript R/02-script_t_test.R --filename output/data/cleaned_data.csv --colname1 attr_other_rating --colname2 attr5_1 --method paired --output output/ttest_paired.RDS

# Script for running the pearson correlation between self- and other-rated attractiveness and saving the outputs
Rscript R/03-pearson_process.R output/data/cleaned_data.csv attr_other_rating attr5_1 greater

# Script for creating a data visualization of the contour plot that describes the relationship between self- vs other-rated attractiveness
Rscript R/04-contour_plot.R attr_other_rating attr5_1 'Self Rating' 'Other Rating'

# Script to rendering the final report Rmd file to bookdown html
Rscript -e "rmarkdown::render('analysis/analysis_report.Rmd', 'bookdown::html_document2')"

# Moving the output to the output folder
mv analysis/analysis_report.html output/