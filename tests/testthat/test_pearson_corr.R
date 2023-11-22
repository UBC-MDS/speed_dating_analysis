source("helper_pearson_corr.R")

test_that("Test estimate gives correct value", {
  expect_equivalent(expected_result_greater$estimate, observed_result_greater$estimate)
  expect_equivalent(expected_result_less$estimate, observed_result_less$estimate)
  expect_equivalent(expected_result_two_sided$estimate, observed_result_two_sided$estimate)
})

test_that("Test statistic gives correct value", {
  expect_equivalent(expected_result_greater$statistic, observed_result_greater$statistic)
  expect_equivalent(expected_result_less$statistic, observed_result_less$statistic)
  expect_equivalent(expected_result_two_sided$statistic, observed_result_two_sided$statistic)
})

test_that("Test p-value gives correct value", {
  expect_equivalent(expected_result_greater$p.value, observed_result_greater$p.value)
  expect_equivalent(expected_result_less$p.value, observed_result_less$p.value)
  expect_equivalent(expected_result_two_sided$p.value, observed_result_two_sided$p.value)
})

test_that("Test alternative gives correct value", {
  expect_equal(expected_result_greater$alternative, observed_result_greater$alternative)
  expect_equal(expected_result_less$alternative, observed_result_less$alternative)
  expect_equal(expected_result_two_sided$alternative, observed_result_two_sided$alternative)
})


