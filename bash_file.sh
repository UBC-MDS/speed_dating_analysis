#!/bin/bash

# create process for data cleaning, output cleaned file
Rscript R/01-data_cleaning_process.R data/Speed_Dating_Data.csv

# data analysis - t-test
Rscript R/02-script_t_test.R --filename output/data/cleaned_data.csv --colname1 attr_other_rating --colname2 attr5_1 --method diff --output output/ttest_diff.RDS
Rscript R/02-script_t_test.R --filename output/data/cleaned_data.csv --colname1 attr_other_rating --colname2 attr5_1 --method diff --output output/ttest_paired.RDS

# data analzsis - pearson correlation

# data vis - contour plot

# data vis for - t-test

# rendering the final report Rmd file