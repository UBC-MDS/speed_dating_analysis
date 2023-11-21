library(tidyverse)

#' Performing the significance test on two columns of a dataframe to compare them
#'
#' @param data A data frame for the statistcal test
#' @param col1 The first column for the test
#' @param col2 The second column for the test
#' @param version Either 'paired' for paired t-test or 'diff' for comparing the difference of the two columns to zero
#'
#' @return a htest object storing the test result
#' @export
#'
#' @examples
#' our_t_test(mtcars, am, bm, version='diff')
our_t_test<-function(data,col1,col2,version='diff'){
  if(version=='diff'){
    data %>% 
      mutate(diff={{col1}}-{{col2}}) %>%
      t.test(x=.$diff,y=NULL,alternative='two.sided',mu=0,paired=FALSE)
  }else{
    t.test(x=data %>% pull({{col1}}),
           y=data %>% pull({{col2}}),alternative='two.sided',paired = TRUE,mu=0)
  }
}
