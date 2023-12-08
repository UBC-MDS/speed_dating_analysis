library(testthat)
library(here)
source(paste0(here(), "/tests/testthat/helper_clean_speed_dating_dat.R"))

# examine input
test_that("Test that the raw data frame has the relevant input", {
  expect_error(clean_speed_dating_dat(wrong_df), 
               "Check that you are using the correct data set!")
})

test_that("Test that the data has more than 1 row", {
  expect_error(clean_speed_dating_dat(wrong_df),
               "Your data frame only has 1 row of data")
})

# examine output
test_that("Examine that there are 11 columns in the cleaned data set", {
  expect_equal(ncol(df), 11)
  expect_equal(names(df), c("pid", 
                            "attr_other_rating", 
                            "sinc_other_rating", 
                            "intel_other_rating", 
                            "fun_other_rating", 
                            "amb_other_rating",  
                            "attr5_1", 
                            "sinc5_1", 
                            "intel5_1", 
                            "fun5_1", 
                            "amb5_1"))
})

test_that("There should be 2 of each attribute in the cleaned data set", {
  expect_true(
    sum(str_detect(colnames(df), '^attr')) == 2
  )
  expect_true(
    sum(str_detect(colnames(df), '^sinc')) == 2
  )
  expect_true(
    sum(str_detect(colnames(df), '^intel')) == 2
  )
  expect_true(
    sum(str_detect(colnames(df), '^fun')) == 2
  )
  expect_true(
    sum(str_detect(colnames(df), '^amb')) == 2
  )
})
