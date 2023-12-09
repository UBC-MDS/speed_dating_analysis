library(tidyverse)
# function input for tests for our_t_test
a <- 1:10
b <- c(0.79,2.17,4.8,3.2,6.02,4.81,7.13,8.99,7.52,10.25)
data <- data.frame(a=a,b=b)

# expected function output from our_t_test
diff_test <-
  data %>% 
  mutate(diff=a-b) %>%
  t.test(x=.$diff,y=NULL,alternative='two.sided',mu=0,paired=FALSE)

paired_test <-
  t.test(x=data %>% pull(a),
         y=data %>% pull(b),alternative='two.sided',paired = TRUE,mu=0)

paired_test_method_output<-paired_test$method
diff_test_method_output<-diff_test$method
paired_test_statistic_output<-paired_test$statistic
diff_test_statistic_output<-diff_test$statistic
paired_test_p_output<-paired_test$p.value
diff_test_p_output<-diff_test$p.value

data_edge <- data.frame(a=1,b=2)
