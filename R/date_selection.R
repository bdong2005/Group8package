#'Function from date_selection.R file. Subsets the the converted data from covid_date_format toward one direction
#'
#' @param direction string that assigns operator direction geq,leq.lthen,gthen
#' @param date date string. Must be typed "yyyy-mm-dd" format
#'
#' @return Returns subset dates for function of "before_after"
#' @export
#'
#' @examples before_after("leq","2021-08-30")

before_after <- function(direction, date){
  converted_data <- covid_date_format(covid_data)
  if(direction == "geq"){

    return(converted_data[converted_data$Date >= date, ])

  } else if(direction == "leq"){

    return(converted_data[converted_data$Date <= date, ])

  } else if(direction == "lthen"){

    return(converted_data[converted_data$Date < date, ])

  } else if(direction == "gthen") {

    return(converted_data[converted_data$Date > date, ])

  }



}



#' Function from date_selection.R file. Subsets the converted data from covid_date_format from one date to another
#'
#' @param earlier_date starting date string. Must be typed "yyyy-mm-dd" format
#' @param later_date ending date string. Must be typed "yyyy-mm-dd" format
#'
#' @return returns the subset of one date earlier all the way to another date
#' later
#' @export
#'
#' @examples double_dates("2020-08-21","2021-09-21")

double_dates <- function(earlier_date,later_date){

  converted_data <- covid_date_format(covid_data)
  return(converted_data[converted_data$Date >= earlier_date & converted_data$Date <= later_date, ])

}



