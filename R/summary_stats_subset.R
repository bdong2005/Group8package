#'Summary_Statistics of subset from date_selection
#'
#' @param data_summary The subset data returned from the date_selection functions
#'
#' @return Returns table of summary statistics for the variables excluding Date
#' @export
#'
#' @examples sum_stats(before_after(direction = "leq",date = "2020-03-27"))

sum_stats <- function(data_summary){

  library(vtable)

  sumtable(data_summary[,-1])
}
