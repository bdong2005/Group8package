#'One direction date sub setter
#'
#' @param direction
#' @param date
#'
#' @return Returns subset dates for function of "before_after"
#' @export
#'
#' @examples before_after("leq","2021-08-30")

before_after <- function(direction, date){

  if(direction == "geq"){

    type1 <- converted_data[converted_data$Date >= date, ]

  } else if(direction == "leq"){

    type1 <- converted_data[converted_data$Date <= date, ]

  } else if(direction == "lthen"){

    type1 <- converted_data[converted_data$Date < date, ]

  } else if(direction == "gthen") {

    type1 <- converted_data[converted_data$Date > date, ]

  }

  return(type1)

}



#' Subset vector of dates between from one date to another
#'
#' @param earlier_date
#' @param later_date
#'
#' @return returns the subset of one date earlier all the way to another date
#' later
#' @export
#'
#' @examples double_dates("2020-08-21","2021-09-21")
double_dates <- function(earlier_date,later_date){

  type2 <- converted_data[converted_data$Date >= earlier_date &
                            converted_data$Date <= later_date, ]
  return(type2)
}






