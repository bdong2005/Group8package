#' Scatter plots of all age groups plotted against hosplitalized
#'
#' @param fdata The subset data returned from date_selection functions
#'
#' @return Returns Scatter plots of age groups versus hospitalized
#' @export
#'
#' @examples age_group_plots(double_dates(earlier_date = "2020-08-21",later_date = "2021-06-21"))



age_group_plots <- function(fdata){
  library(ggplot2)
  plot_data <- fdata
  plot_data
  for(age_group in seq(8,16)){

    print(ggplot(data=plot_data, aes(x=plot_data[,age_group], y=Hospitalized))+ xlab(colnames(plot_data[age_group])) + geom_point(size=1, shape=23))

  }

}
