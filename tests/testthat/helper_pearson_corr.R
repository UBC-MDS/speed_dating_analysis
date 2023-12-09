library(tidyverse)
library(here)
source(paste0(here(),'/R/pearson_corr.R'))

generate_test_data <- function(number_of_rows) {
  set.seed(123)

  data.frame(
    x = rnorm(number_of_rows),
    y = rnorm(number_of_rows)  
  )
}

data <- generate_test_data(100)
x = data[["x"]]
y = data[["y"]]

expected_result_greater <- cor.test(data$x, data$y, alternative = "greater")
expected_result_less <- cor.test(data$x, data$y, alternative = "less")
expected_result_two_sided <- cor.test(data$x, data$y, alternative = "two.sided")

observed_result_greater <- pearson_corr(data, x, y, "greater")
observed_result_less <- pearson_corr(data, x, y, "less")
observed_result_two_sided <- pearson_corr(data, x, y, "two.sided")

data_single_row <- generate_test_data(1)
x_2 = data_single_row[["x"]]
y_2 = data_single_row[["y"]]
