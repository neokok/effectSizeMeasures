#' Function to compute risk ratio (relative risk) with Wald Approximation.
#'
#' This function takes a 2x2 matrix and calculates the risk ratio. The formula for this is:
#' \deqn{\text{Risk ratio} = \frac{\text{Diseased}_{\text{Exposed}} / (\text{Diseased}_{\text{Exposed}} + \text{NonDiseased}_{\text{Exposed}})}{\text{Diseased}_{\text{NonExposed}} / (\text{Diseased}_{\text{NonExposed}} + \text{NonDiseased}_{\text{NonExposed}})}}
#'
#' @param data A 2x2 numeric matrix of the form: as.matrix(c(Diseased_Exposed, NonDiseased_Exposed, Disease_NonExposed, NonDisease_NonExposed2))
#' @return A numeric value of the risk ratio of the matrix.
#' @examples
#' risk_ratio(matrix(c(20, 6, 380, 594), nrow = 2, ncol = 2))
#' @export
#'

risk_ratio = function(data){
  # Matrix size check
  if(sum(dim(data) == c(2,2)) != 2){
    stop("Input dimension must be a matrix of 2x2 dimension.")
  }

  # Initialize sectors of data
  a = data[1,1]
  b = data[1,2]
  c = data[2,1]
  d = data[2,2]

  # Calculate risk ratio based on formula
  risk = (d / (d + c)) / (b / (a + b))

  # Return risk ratio if it is not infinite, otherwise return stop message
  if(!is.infinite(risk)){
    return(risk)
  }
  stop("Risk ratio cannot be calculated with no observations for exposed and non-diseased")
}
