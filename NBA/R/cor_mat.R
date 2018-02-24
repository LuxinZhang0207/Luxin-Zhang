#' A Cat Function
#'
#'  Your input for this function should be an individual year.  
#'  Your function should limit the data for that year to include 
#'  numeric continuous variables only (not categorical data).  
#'  Your output should be the correlation matrix for all numeric 
#'  variables in the data for that year.
#' @param Year
#' @keywords correlation matrix
#' @export
#' @examples
#' cor_mat()


cor_mat <- function(n){
  data <- dplyr::filter(NBA, Year == n)
  data2 <- sapply(data, is.numeric)
  data_num <- data[ , data2, drop = FALSE]
  output3 <- cor(as.matrix(data_num))
  return(output3)
}