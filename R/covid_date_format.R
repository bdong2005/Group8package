#' Covid Date formatter
#'
#' @param data
#'
#' @return returns date column as date
#' @export
#'
#' @examples converted_data$Date <- as.Date(converted_data$Date)

covid_data <- read.csv("covid_SD.csv")

covid_date_format<- function(data = covid_data ){

  converted_data <- covid_data
  converted_data$Date <- as.Date(converted_data$Date)

  return(converted_data$Date)
}


