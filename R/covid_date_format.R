#' THIS FUNCTION MUST BE USED FIRST BEFORE OTHERS.Use library(devtools) and then use data("covid_data") to load the SD data set in the environment
#' and which allows user to convert the Date column into a date object for data subset usage
#' @param data Reads in our example covid_SD csv data file
#'
#' @return returns date column as date object with our new variable converted_data
#' @export
#'
#' @examples run  covid_date_format(covid_data)



covid_date_format<- function(data_name){

  converted_data <- data_name
  converted_data$Date <- as.Date(converted_data$Date)
  converted_data


}


