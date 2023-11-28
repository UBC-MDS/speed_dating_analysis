library(testthat)
library(here)
source(paste0(here(), "/tests/testthat/helper_group_comparison_violin_plot.R"))

# Check input
test_that("Check if the correct columns are entered", {
  expect_error(group_violin_plot(df, self_score = attr5_1, other_score = attr5_1),
               "Did you you enter both a self and other rating?")
  expect_error(group_violin_plot(df, self_score = attr5_1, other_score = fun_other_rating),
               "Did you enter the correct attributes?")
})

# Check output

test_that("Plot layers match expectations", {
  expect_is(group_plot$layers[[1]]$geom, "GeomViolin")
})

test_that("Output print of ggplot works without as expected", {
  expect_error(print(group_plot), NA)
})