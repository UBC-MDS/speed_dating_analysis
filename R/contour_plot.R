#' Contour Plot Function
#'
#' This function generates a contour plot with a 2D density estimate and a linear smooth.
#'
#' @param data A data frame containing the variables specified in column1 and column2.
#' @param column1 The column representing the y-axis variable.
#' @param column2 The column representing the x-axis variable.
#' @param x_lab The label for the x-axis.
#' @param y_lab The label for the y-axis.
#'
#' @return A ggplot object with the contour plot.
#'
#' @import ggplot2
#' @examples
#' # Example usage:
#' my_data <- data.frame(x = rnorm(100), y = rnorm(100))
#' contour_plot_function(data = my_data, column1 = 'y', column2 = 'x', x_lab = 'X Variable', y_lab = 'Y Variable')
contour_plot_function <- function(data, column1, column2, x_lab, y_lab) {
  ggplot2::ggplot(data, aes(x = {{ column2 }}, y = {{ column1 }})) +
    geom_density_2d() +
    geom_smooth(se = FALSE, method = 'lm', linetype = 'dashed', colour = 'red') +
    xlab(x_lab) +
    ylab(y_lab) +
    ggtitle(paste('Contour Plot of', x_lab ,'and', y_lab ))
}