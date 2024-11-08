#' Function to compute coefficient of determination
#'
#' This function takes two vectors and returns the coefficient of determination by calling the pearson_corr function and squaring the output. The formula for this is:
#' R^2 = r^2
#'
#' @param x A numeric vector of length n.
#' @param y A numeric vector also of length n.
#' @return A numeric value of coefficient of determination of x and y.
#' @examples
#' coef_determination(c(1, 2, 3, 4), c(4, 6, 7, 4))
#' @export
#'


coef_determination = function(x, y){
  if(length(x) != length(y) | length(x) == 0){
    stop("Input lengths of x and y must be equal and greater than 0.")
  }

  return(pearson_corr(x,y) ^ 2)
}
