test_that("coef_determination calculates correctly for non-empty vectors", {
  x <- c(1, 2, 3, 4, 5)
  y <- c(5, 4, 3, 2, 1)
  expect_equal(coef_determination(x, y), 1)

  y <- c(1, 2, 3, 4, 5)
  expect_equal(coef_determination(x, y), 1)
})

test_that("coef_determination works with non-perfect correlation", {
  x <- c(1, 2, 3, 4, 5)
  y <- c(1, 3, 2, 4, 5)
  expect_equal(coef_determination(x, y), 0.81, tolerance = 1e-2)
})

test_that("coef_determination returns error for empty or unequal vectors", {
  x <- numeric(0)
  y <- c(1, 2, 3)
  expect_error(coef_determination(x, y), "Input lengths of x and y must be equal and greater than 0.")

  x <- c(1, 2, 3)
  y <- c(1, 2)
  expect_error(coef_determination(x, y), "Input lengths of x and y must be equal and greater than 0.")
})

test_that("coef_determination returns error for a constant vector", {
  x <- c(1, 2, 3, 4, 5)
  y <- c(5, 5, 5, 5, 5)
  expect_error(coef_determination(x, y), "Std is 0")
})
