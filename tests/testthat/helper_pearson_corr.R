library(tidyverse)
library(here)
source(paste0(here(),'/R/pearson_corr.R'))

generate_test_data <- function() {
  set.seed(123)
  
  data.frame(
    x = rnorm(100),
    y = rnorm(100)  
  )
}
  
data <- generate_test_data()
x = data[["x"]]
y = data[["y"]]

expected_result_greater <- cor.test(data$x, data$y, alternative = "greater")
expected_result_less <- cor.test(data$x, data$y, alternative = "less")
expected_result_two_sided <- cor.test(data$x, data$y, alternative = "two.sided")

observed_result_greater <- pearson_corr(data, x, y, "greater")
observed_result_less <- pearson_corr(data, x, y, "less")
observed_result_two_sided <- pearson_corr(data, x, y, "two.sided")