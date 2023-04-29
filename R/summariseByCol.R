#' Create summary table for a dataframe 
#' @param df A dataframe
#' @param col Defined as the column name to group by
#' @return summary table of dataframe which is grouped by unique levels within a column then counted
#' @export
summariseByCol <- function (df,col) {
  summary <- df %>% 
    group_by(.data[[col]]) %>%
    summarise(n = n())
  return(summary)
}
 