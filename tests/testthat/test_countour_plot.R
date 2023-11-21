library(testthat)
library(here)
source(paste0(here(),'/tests/testthat/helper_contour_plot.R'))


test_that('The title is not correct', {
  expect_equal(plot$labels$title, 'Contour Plot of X Variable and Y Variable')
})


test_that('The title is not correct', {
  expect_equal(plot$labels$x, 'X Variable')
})


test_that('The title is not correct', {
  expect_equal(plot$labels$y, 'Y Variable')
})


test_that('The object is of the wrong type / class', {
  expect_true('gg' %in% class(plot))
  expect_true('ggplot' %in% class(plot))
})


test_that('The intecept and the slope of the linear model are not numeric', {
  expect_equal(class(ggplot_build(plot)$layout$panel_params[[1]]$x.range[1]), 'numeric')
  expect_equal(class(ggplot_build(plot)$layout$panel_params[[1]]$x.range[2]), 'numeric')
})


test_that('The arguments x_lab and y_lab expect a string', {
  expect_error(contour_plot_function(data = test_data, column1 = x, column2 = y, x_lab = X_Variable, y_lab = 'Y Variable'))
  expect_error(contour_plot_function(data = test_data, column1 = x, column2 = y, x_lab = 'X Variable', y_lab = Y_Variable))
})