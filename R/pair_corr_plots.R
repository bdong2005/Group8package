#' Pairs plots that show density and correlation of variables 2 through 7 (larger amount of variables takes too much)
#'
#' @param pair_data The subset data returned from the date_selection functions
#'
#' @return Gives back pair plots including correlation for columns 2 through 7
#' @export
#'
#' @examples pair_plots(double_dates(earlier_date = "2020-08-21",later_date = "2021-09-21"))

pair_plots <- function(pair_data){
  library(GGally)
  ggpairs(pair_data,columns = 2:7)
}
