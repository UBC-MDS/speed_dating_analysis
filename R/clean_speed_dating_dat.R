
#' Cleaning Speed Dating Data
#' 
#' This function returns a subset of the Speed Dating Dataset on 5 self- and other-rated
#' attributes: attractive (attr), sincere (sinc), intelligent (intel), fun (fun), ambitious (amb).
#' The function does not take any input as we are only interested in isolating the self vs other
#' ratings of these 5 attributes for comparison.
#' 
#' @return a tibble data frame with the participant id (pid) and 10 columns (5 for each self-rated
#' attributes and 5 for each other-rated attributes)
#' @export
#' 
#' @import tidyverse
#' 
#' @examples 
#' clean_speed_dating_dat()
clean_speed_dating_dat <- function(){
  dat <- read.csv(paste0(here(),'/data/Speed_Dating_Data.csv')) 
  
  # obtaining other rating of each individual by aggregating
  # across their partner's ratings of them
  dat |> 
    select(pid, attr:amb) |> 
    group_by(pid) |> 
    summarise(across(c(attr:amb), mean, na.rm = TRUE)) |> 
    rename_at(vars(attr:amb), ~ paste0(., "_other_rating")) -> other_rating
  
  # obtaining self rating  
  dat |> 
    select(iid, attr5_1:amb5_1) |> 
    unique() |> 
    filter_at(vars(attr5_1:amb5_1), ~ !is.na(.)) -> self_rating
  
  cleaned_data <- merge(other_rating, self_rating, by.x = "pid", by.y = "iid")
  
}