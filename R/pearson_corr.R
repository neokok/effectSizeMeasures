#' Function to compute pearson's correlation coefficient
#'
#' This function takes two vectors and returns pearson's correlation coefficient.
#'
#' @param x A numeric vector of length n.
#' @param y A numeric vector also of length n.
#' @return The pearson correlation coefficient of x and y.
#' @examples
#' pearson_corr(c(1, 2, 3, 4), c(4, 6, 7, 4))
#' @export
#'


pearson_corr = function(x, y){
  if(length(x) != length(y) | length(x) == 0){
    warning("Input lengths of x and y must be equal and greater than 0.")
  }

  mean_x = mean(x)
  mean_y = mean(y)

  centered_x = x - mean_x
  centered_y = y - mean_y

  numerator = sum(centered_x * centered_y)
  denominator = sqrt(sum(centered_x ^ 2)) * sqrt(sum(centered_y ^ 2))

  return(numerator/denominator)

}
