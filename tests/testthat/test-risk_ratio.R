test_that("risk_ratio calculates correctly for a 2x2 matrix", {
  data <- matrix(c(10, 20, 5, 15), nrow = 2, ncol = 2)
  expect_equal(risk_ratio(data), 1.285714, tolerance = 1e-3)
})

test_that("risk_ratio returns error for non-2x2 input", {
  data <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3)
  expect_error(risk_ratio(data), "Input dimension must be a matrix of 2x2 dimension.")

  data <- matrix(c(1, 2, 3, 4), nrow = 1)
  expect_error(risk_ratio(data), "Input dimension must be a matrix of 2x2 dimension.")
})

test_that("risk_ratio handles cases where one cell is zero", {
  data <- matrix(c(0, 20, 5, 15), nrow = 2, ncol = 2)
  expect_equal(risk_ratio(data), 0.42857143)

  data <- matrix(c(10, 0, 5, 15), nrow = 2, ncol = 2)
  expect_equal(risk_ratio(data), 3)

  data <- matrix(c(10, 2, 0, 15), nrow = 2, ncol = 2)
  expect_error(risk_ratio(data), "Risk ratio cannot be calculated with no observations for exposed and non-diseased")
})

test_that("risk_ratio returns 1 for a balanced 2x2 matrix", {
  data <- matrix(c(10, 10, 10, 10), nrow = 2, ncol = 2)
  expect_equal(risk_ratio(data), 1)
})

