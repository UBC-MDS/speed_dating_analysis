library(here)
source(paste0(here(),'/R/contour_plot.R'))

test_data <- data.frame(x = rnorm(1000), y = rnorm(1000))
plot <- contour_plot_function(data = test_data, column1 = x, column2 = y, x_lab = 'X Variable', y_lab = 'Y Variable')