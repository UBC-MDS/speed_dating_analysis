library(here)
library(tidyverse)
source(paste0(here(), "/R/clean_speed_dating_dat.R"))

raw_df <- tribble(
  ~iid, ~pid, ~attr5_1, ~sinc5_1, ~intel5_1, ~fun5_1, ~amb5_1, ~attr, ~sinc, ~intel, ~fun, ~amb, ~like,
  1,2,NA,NA,NA,NA,NA,4,8,9,7,8,8,
  1,3,9,6,9,6,10,NA,NA,NA,NA,NA,9,
  1,4,9,6,9,6,10,4,6,10,6,6,3,
  1,5,9,6,9,6,10,4,8,7,5,6,2,
  1,6,9,6,9,6,10,3,7,9,2,9,8,
  2,1,6,9,9,9,9,6,6,6,5,5,6,
  2,3,6,9,9,9,9,6,7,7,6,7,5,
  2,4,6,9,9,9,9,2,6,8,4,8,9,
  2,5,6,9,9,9,9,3,7,5,4,4,6,
  2,6,6,9,9,9,9,3,8,7,5,5,7
) 

wrong_df <- tribble(
  ~iid, ~pid, ~attr2_1, ~sinc2_1, ~intel2_1, ~fun2_1, ~amb2_1, ~attr, ~sinc, ~intel, ~fun, ~amb, ~like,
  1,2,NA,NA,NA,NA,NA,4,8,9,7,8,8,
  1,3,9,6,9,6,10,NA,NA,NA,NA,NA,9,
  1,4,9,6,9,6,10,4,6,10,6,6,3,
  1,5,9,6,9,6,10,4,8,7,5,6,2,
  1,6,9,6,9,6,10,3,7,9,2,9,8,
  2,1,6,9,9,9,9,6,6,6,5,5,6,
  2,3,6,9,9,9,9,6,7,7,6,7,5,
  2,4,6,9,9,9,9,2,6,8,4,8,9,
  2,5,6,9,9,9,9,3,7,5,4,4,6,
  2,6,6,9,9,9,9,3,8,7,5,5,7
) 

short_df <- tribble(
  ~iid, ~pid, ~attr5_1, ~sinc5_1, ~intel5_1, ~fun5_1, ~amb5_1, ~attr, ~sinc, ~intel, ~fun, ~amb, ~like,
  2,6,6,9,9,9,9,3,8,7,5,5,7
) 


df <- clean_speed_dating_dat(raw_df)