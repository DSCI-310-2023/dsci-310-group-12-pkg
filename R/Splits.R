#' Splits a Dataframe
#' @param data A dataframe
#' @param ratio Defined as a number, x, between (0,1) where x+y = 1 and x:y is the ratio of training:testing partitions Refer to sample.split documentation for more details.
#' @return splits of given dataframe.
#' @export
splits <- function(data,ratio) {
  # libraries
  library(caTools)
  # code
  x <- sample.split(data,SplitRatio = ratio)
  return(x)
}