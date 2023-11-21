library(testthat)
library(here)
source(paste0(here(), "/tests/testthat/helper_clean_speed_dating_dat_test.R"))

test_that("Examine that there are 11 columns in the cleaned data set", {
  expect_equal(ncol(df), 11)
})

test_that("There should be 2 of each attribute in the cleaned data set", {
  expect_true(sum(str_detect(colnames(df), '^attr')) == 2)
  expect_true(sum(str_detect(colnames(df), '^sinc')) == 2)
  expect_true(sum(str_detect(colnames(df), '^intel')) == 2)
  expect_true(sum(str_detect(colnames(df), '^fun')) == 2)
  expect_true(sum(str_detect(colnames(df), '^amb')) == 2)
})
