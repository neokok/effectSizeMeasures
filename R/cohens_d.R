#' Function to compute cohen's d.
#'
#' This function takes two vectors and returns the raw or absolute value of cohen's d. It is calculated by taking the difference of the two means and dividing it by the pooled standard deviation:
#' \deqn{d = \frac{x_1 - x_2}{s}}
#' where:
#' \deqn{s = \sqrt{\frac{(n_1 - 1) s_1^2 + (n_2 - 1) s_2^2}{n_1 + n_2 - 2}}}
#'
#' @param x1 A numeric vector of length n1.
#' @param x2 A numeric vector of length n2.
#' @param abs A boolean that indicates whether response should be the absolute value of cohen's d or not.
#' @return A numeric value of the raw or absolute value of cohen's d of x1 and x2.
#' @examples
#' cohens_d(c(1, 2, 3, 4), c(4, 6, 7, 4), TRUE)
#' cohens_d(c(21, 12, 32, 46), c(84, 76, 57, 45), FALSE)
#' @export
#'


cohens_d = function(x1, x2, abs = FALSE){
  if(length(x1) == 0 | length(x2) == 0){
    stop("Input lengths of x and y must be greater than 0.")
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

  if(abs){
  return(abs((mean_x1 - mean_x2)/s))
  }
  else{
    return((mean_x1 - mean_x2)/s)
  }
}
