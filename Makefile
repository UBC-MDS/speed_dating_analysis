all : output/analysis_report.html

# Create a process for data cleaning to output a cleaned file with the rated variables of interest 
# (self- vs other-rated attractive, sincere, intelligent, fun, and ambitious)
output/data/cleaned_data.csv : data/Speed_Dating_Data.csv R/01-data_cleaning_process.R
	Rscript R/01-data_cleaning_process.R data/Speed_Dating_Data.csv

# Script for creating a data visualization of a violin plot that 
# compares the distribution of the self- vs other-rated plot
output/figures/group_comparison_violin_plot.RDS : output/data/cleaned_data.csv R/05-group_comparison_violin_plot.R
	Rscript R/05-group_comparison_violin_plot.R --self_score attr5_1 --other_score attr_other_rating

# Script for conducting a t-test between self- and other-rated attractiveness 
# and saving the outputs
output/ttest_diff.RDS : output/data/cleaned_data.csv R/02-script_t_test.R
	Rscript R/02-script_t_test.R --filename output/data/cleaned_data.csv \
	--colname1 attr_other_rating --colname2 attr5_1 --method diff --output output/ttest_diff.RDS

output/ttest_paired.RDS : output/data/cleaned_data.csv R/02-script_t_test.R
	Rscript R/02-script_t_test.R --filename output/data/cleaned_data.csv \
	--colname1 attr_other_rating --colname2 attr5_1 --method paired --output output/ttest_paired.RDS

# Script for running the pearson correlation between self- and other-rated attractiveness 
# and saving the outputs
output/pearson_result.RDS : output/data/cleaned_data.csv R/03-pearson_process.R
	Rscript R/03-pearson_process.R output/data/cleaned_data.csv attr_other_rating attr5_1 greater

# Script for creating a data visualization of the contour plot that describes the relationship between self- vs other-rated attractiveness
output/figures/contour_plot.rds : output/data/cleaned_data.csv R/04-contour_plot.R
	Rscript R/04-contour_plot.R attr_other_rating attr5_1 'Self Rating' 'Other Rating'

# Script to rendering the final report Rmd file to bookdown html
output/analysis_report.html : analysis/analysis_report.Rmd \
output/figures/group_comparison_violin_plot.RDS \
output/ttest_diff.RDS output/ttest_paired.RDS \
output/pearson_result.RDS output/figures/contour_plot.rds
	Rscript -e "rmarkdown::render('analysis/analysis_report.Rmd', 'bookdown::html_document2', output_dir='output/')"
	
clean :
	rm -rf output/data/cleaned_data.csv output/figures/group_comparison_violin_plot.RDS
	rm -rf output/ttest_diff.RDS output/ttest_paired.RDS
	rm -rf output/pearson_result.RDS output/figures/contour_plot.rds
	rm -rf output/analysis_report.html