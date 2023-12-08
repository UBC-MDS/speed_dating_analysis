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
#' @import dplyr
#' 
#' @examples 
#' clean_speed_dating_dat()
clean_speed_dating_dat <- function(dat){
  # check that the correct data frame is being used
  if (
    sum(c("attr", "sinc", "intel", "fun", "amb",
          "attr5_1", "sinc5_1", "intel5_1", "fun5_1", "amb5_1") %in% 
        names(dat))!=10
  ){
    stop("Check that you are using the correct data set!")
  }
  # check that there is more than 1 observation in the data frame
  if (nrow(dat) <= 0){
    stop("Your data frame only has 1 row of data")
  }
  # obtaining other rating of each individual by aggregating
  # across their partner's ratings of them
  dat |> 
    dplyr::select(pid, attr:amb) |> 
    dplyr::group_by(pid) |> 
    dplyr::summarise(
      dplyr::across(c(attr:amb), ~mean(., na.rm = TRUE))
    ) |> 
    dplyr::rename_at(
      dplyr::vars(attr:amb), ~ paste0(., "_other_rating")
    ) -> other_rating
  
  # obtaining self rating  
  self_rating <- dat |> 
    dplyr::select(iid, attr5_1:amb5_1) |> 
    unique() |> 
    dplyr::filter_at(vars(attr5_1:amb5_1), ~ !is.na(.)) 
  
  cleaned_data <- merge(
    other_rating, 
    self_rating, 
    by.x = "pid", 
    by.y = "iid"
  )
  
}