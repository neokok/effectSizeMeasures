#' Function to compute risk ratio (relative risk).
#'
#' This function takes a 2x2 matrix and calculates the risk ratio. The formula for this is:
#' Risk ratio = (Diseased_Exposed / (Diseased_Exposed + NonDiseased_Exposed)) / (Diseased_NonExposed / (Diseased_NonExposed + NonDiseased_NonExposed))
#'
#' @param data A 2x2 numeric matrix of the form: c(Diseased_Exposed, NonDiseased_Exposed, Disease_NonExposed, NonDisease_NonExposed2)
#' @return A numeric value of the risk ratio of the matrix.
#' @examples
#' risk_ratio(matrix(c(20, 6, 380, 594), nrow = 2, ncol = 2))
#' @export
#'

risk_ratio = function(data){
  if(sum(dim(data) == c(2,2)) != 2){
    warning("Input dimension must be a matrix of 2x2 dimension.")
  }
  a = data[1,1]
  b = data[1,2]
  c = data[2,1]
  d = data[2,2]

  return((a / (a + b)) / (c / (c + d)))

}
