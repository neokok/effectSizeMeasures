test_that("odds_ratio calculates correctly for a 2x2 matrix", {
  data <- matrix(c(10, 20, 5, 15), nrow = 2, ncol = 2)
  expect_equal(odds_ratio(data), 1.5, tolerance = 1e-3)
})

test_that("odds_ratio returns error for non-2x2 input", {
  data <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3)
  expect_error(odds_ratio(data), "Input dimension must be a matrix of 2x2 dimension.")

  data <- matrix(c(1, 2, 3, 4), nrow = 1)
  expect_error(odds_ratio(data), "Input dimension must be a matrix of 2x2 dimension.")
})

test_that("odds_ratio handles cases where one cell is zero", {
  data <- matrix(c(0, 20, 5, 15), nrow = 2, ncol = 2)
  expect_equal(odds_ratio(data), 0)

  data <- matrix(c(10, 0, 5, 15), nrow = 2, ncol = 2)
  expect_equal(odds_ratio(data), NA)
})

test_that("odds_ratio returns NA for division by zero cases", {
  data <- matrix(c(10, 20, 0, 15), nrow = 2, ncol = 2)
  expect_true(is.na(odds_ratio(data)))
})

test_that("odds_ratio returns 1 for a balanced 2x2 matrix", {
  data <- matrix(c(10, 10, 10, 10), nrow = 2, ncol = 2)
  expect_equal(odds_ratio(data), 1)
})
