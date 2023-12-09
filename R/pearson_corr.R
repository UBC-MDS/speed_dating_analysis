#' Pearson correlation test
#'
#' Perform a Pearson correlation test on two columns of a data frame
#'
#' @param data A data frame
#' @param col1 Unquoted column name to test
#' @param col2 Unquoted column name to test  
#' @param alternative Direction of test: "less", "greater", "two-sided" (default)
#'
#' @return An htest object
#' @export
#'
#' @examples
#' pearson_corr(mtcars, mpg, disp, "less")
pearson_corr <- function(data, col1, col2, alternative = "two.sided") {

  if (nrow(data) == 1) {
    stop("The dataframe must have more than one row")
  }
  
  alternative <- match.arg(alternative, 
                           choices = c("two.sided", "less", "greater"))
  
  cor.test(x=data %>% pull({{col1}}),
           y=data %>% pull({{col2}}),  
           alternative = alternative,
           method = "pearson")
}

