#' Visualizing Group Data as Violin Plot
#'
#' This function generates violin plots between self and other ratings scores on one of the attributes.
#'
#' @param data A data frame containing the variables specified in column1 and column2.
#' @param self_score The column that contains self-rated scores.
#' @param other_score The column that contains the other-rated scores.
#'
#' @return A ggplot object with the contour plot.
#'
#' @import dplyr, tidyr, ggplot2
#' @examples
#' group_violin_plot(data, self_score = attr5_1, other_score = attr_other_rating)
group_violin_plot <- function(data, self_score, other_score) {
  if (deparse(substitute(self_score)) == deparse(substitute(other_score))) {
    stop("Did you you enter both a self and other rating?")
  }
  if (!(substr(deparse(substitute(self_score)), 1, 3) == substr(deparse(substitute(other_score)), 1, 3))){
    stop("Did you enter the correct attributes?")
  }
  data |> 
    dplyr::select(pid, {{ self_score }}, {{ other_score }}) |> 
    dplyr::rename(`Self Rating` = {{ self_score }},
                  `Other Rating` = {{ other_score }}) |> 
    tidyr::pivot_longer(-pid, values_to = 'Score', names_to = 'Rating Type') %>%
    ggplot2::ggplot(aes(x=`Rating Type`, y=Score)) +
    ggplot2::geom_violin() +
    ggplot2::stat_summary(fun.data = mean_cl_boot, geom = "errorbar", width = 0.2) +
    ggplot2::ggtitle('Distributions of Other Rating and Self Rating') 
}