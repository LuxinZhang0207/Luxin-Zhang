#' A highest_score Function
#'
#' Your input for this function should be an individual year.  
#' Your output should be the player for that year who scored the most points.
#' @param Year abcd hahaha 
#' @keywords highest score
#' @export
#' @examples
#' highest_score()

highest_score <- function(x){
  year <- dplyr::filter(dplyr::arrange(NBA, desc(PTS)), Year == x)
  output <- year[1,2]
  return(output)
}