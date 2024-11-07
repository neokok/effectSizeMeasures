#' Function to compute odds ratio with normal approximation (Wald)
#'
#' This function takes a 2x2 matrix and calculates the odds ratio.
#'
#' @param data A 2x2 numeric matrix of the form: c(Diseased_Exposed, NonDiseased_Exposed, Disease_NonExposed, NonDisease_NonExposed2)
#' @return The odds ratio of the matrix.
#' @examples
#' odds_ratio(matrix(c(20, 6, 380, 594), nrow = 2, ncol = 2))
#' @export
#'

odds_ratio = function(data){
  if(sum(dim(data) == c(2,2)) != 2){
    warning("Input dimension must be a matrix of 2x2 dimension.")
  }
  a = data[1,1]
  b = data[1,2]
  c = data[2,1]
  d = data[2,2]

  return((a / b) / (c / d))

}
