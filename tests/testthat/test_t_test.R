library(testthat)
source("../../R/t_test.R")

test_that("t test should return a htest object", {
  expect_s3_class(our_t_test(data,a,b), "htest")
})

test_that("t test should return the right test result", {
  expect_equivalent(our_t_test(data, a, b, version = 'paired')$method, paired_test_method_output)
  expect_equivalent(our_t_test(data, a, b, version = 'diff')$method, diff_test_method_output)
})

test_that("t test should return the right test result", {
  expect_equivalent(our_t_test(data, a, b, version = 'paired')$statistic, paired_test_statistic_output)
  expect_equivalent(our_t_test(data, a, b, version = 'diff')$statistic, diff_test_statistic_output)
  expect_equivalent(our_t_test(data, a, b, version = 'paired')$p.value, paired_test_p_output)
  expect_equivalent(our_t_test(data, a, b, version = 'diff')$p.value, diff_test_p_output)
})


test_that("t test should throw an error when columns not from the data frame 
          are passed to `data_frame` and `class_col` arguments", {
  expect_error(our_t_test(data, a))
  expect_error(our_t_test(data, g, y))
})
