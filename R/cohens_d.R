#' Function to compute cohen's d.
#'
#' This function takes two vectors and returns the absolute value of cohen's d.
#'
#' @param x1 A numeric vector of length n1.
#' @param x2 A numeric vector of length n2.
#' @return The cohen's d of x1 and x2.
#' @examples
#' cohens_d(c(1, 2, 3, 4), c(4, 6, 7, 4))
#' @export
#'


cohens_d = function(x1, x2){
  if(length(x1) == 0 | length(x2) == 0){
    warning("Input lengths of x and y must be greater than 0.")
  }

  mean_x1 = mean(x1)
  mean_x2 = mean(x2)

  n1 = length(x1)
  n2 = length(x2)

  s1 = (1/(n1 - 1)) * sum((x1 - mean_x1)^2)
  s2 = (1/(n2 - 1)) * sum((x2 - mean_x2)^2)

  numerator = ((n1 - 1) * s1) + ((n2 - 1) * s2)
  denominator = n1 + n2 - 2

  s = sqrt(numerator/denominator)

  return(abs((mean_x1 - mean_x2)/s))
}
