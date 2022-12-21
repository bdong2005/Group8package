#' 2D histogram of dates against variables 2 through 7 of the data set and show relationship of intensities
#'
#' @param input_data The subset data given from functions in date_selection
#'
#' @return Generates 2d histogram plots of subset dates against variables 2 to 7
#' @export
#'
#' @examples two_d_histo(double_dates(earlier_date = "2020-08-21",later_date = "2021-06-21"))

two_d_histo <- function(input_data){
  library(ggplot2)
  converted_data <- covid_date_format(covid_data)

  for(i in 2:ncol(converted_data)){

    print(ggplot(data=input_data, aes(x=Date, y=input_data[,i])) + geom_bin2d() +theme(axis.text.x = element_text(angle = 90)) + scale_y_continuous(n.breaks=10) +ylab(colnames(input_data[i]))
    )

  }

}
