#' Function to compute coefficient of determination
#'
#' This function takes two vectors and returns the coefficient of determination.
#'
#' @param x A numeric vector of length n.
#' @param y A numeric vector also of length n.
#' @return The coefficient of determination of x and y.
#' @examples
#' coef_determination(c(1, 2, 3, 4), c(4, 6, 7, 4))
#' @export
#'


coef_determination = function(x, y){
  if(length(x) != length(y) | length(x) == 0){
    warning("Input lengths of x and y must be equal and greater than 0.")
  }

  return(pearson_corr(x,y) ^ 2)
}
