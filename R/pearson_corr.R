#' Function to compute pearson's correlation coefficient
#'
#' This function takes two vectors and returns pearson's correlation coefficient. The formula for this is:
#' \deqn{r_{xy} = \frac{\sum_{i=1}^{n} (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum_{i=1}^{n} (x_i - \bar{x})^2} \sqrt{\sum_{i=1}^{n} (y_i - \bar{y})^2}}}
#'
#' @param x A numeric vector of length n.
#' @param y A numeric vector also of length n.
#' @return A numeric value of the pearson correlation coefficient of x and y.
#' @examples
#' pearson_corr(c(1, 2, 3, 4), c(4, 6, 7, 4))
#' # Output: 0.0860663
#' @export
#'


pearson_corr = function(x, y){
  # Length check
  if(length(x) != length(y) | length(x) == 0){
    stop("Input lengths of x and y must be equal and greater than 0")
  }

  # Missing data check
  if(sum(is.na(x) > 0 | sum(is.na(y) > 0))){
    stop("NAs present")
  }

  # Calculate averages
  mean_x = mean(x)
  mean_y = mean(y)

  # Center observations
  centered_x = x - mean_x
  centered_y = y - mean_y

  # Calculate numerator and denominator of Pearson Correlation formula
  numerator = sum(centered_x * centered_y)
  denominator = sqrt(sum(centered_x ^ 2)) * sqrt(sum(centered_y ^ 2))

  # Output correlation if denominator is not 0, else output warning
  corr = numerator/denominator
  if(denominator == 0){
    stop("Std is 0")
  }
  return(corr)

}
