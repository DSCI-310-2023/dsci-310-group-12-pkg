#' Split a data set into training and test set given a ratio
#'
#' `split` returns the split of a data set for training validation sets
#'  Refer to sample.split documentation for more details.
#' 
#' 

library(dplyr)
library(ggplot2)

split <- function(data,ratio) {
  sample.split(data,ratio);
}

create_package("~/path/to/regexcite")