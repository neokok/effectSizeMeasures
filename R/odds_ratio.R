#' Function to compute odds ratio with Wald approximation.
#'
#' This function takes a 2x2 matrix and calculates the odds ratio. The formula for this is:
#' \deqn{\text{Odds ratio} = \frac{\text{Diseased}_{\text{Exposed}} / \text{NonDiseased}_{\text{Exposed}}}{\text{Diseased}_{\text{NonExposed}} / \text{NonDiseased}_{\text{NonExposed}}}}
#'
#' @param data A 2x2 numeric matrix of the form: as.matrix(c(Diseased_Exposed, NonDiseased_Exposed, Disease_NonExposed, NonDisease_NonExposed2))
#' @return A numeric value of the odds ratio of the matrix.
#' @examples
#' odds_ratio(matrix(c(20, 6, 380, 594), nrow = 2, ncol = 2))
#' @export
#'

odds_ratio = function(data){
  # Matrix size check
  if(sum(dim(data) == c(2,2)) != 2){
    stop("Input dimension must be a matrix of 2x2 dimension.")
  }

  # Initialize sectors of data
  a = data[1,1]
  b = data[1,2]
  c = data[2,1]
  d = data[2,2]

  # Calculate odds ratio based on formula
  odds = (a / b) / (c / d)

  # Return odds ratio if it is not infinite, otherwise return stop message
  if(!is.infinite(odds)){
    return(odds)
  }
  stop("Odds ratio cannot be calculated with no observations for not exposed and diseased")
}
