test_that("cohens_d calculates correctly for non-empty vectors", {
  x1 <- c(1, 2, 3, 4, 5)
  x2 <- c(6, 7, 8, 9, 10)
  expect_equal(cohens_d(x1, x2, F), -3.162, tolerance = 1e-3)
  expect_equal(cohens_d(x1, x2, T), 3.162, tolerance = 1e-3)
})

test_that("cohens_d calculates absolute effect size correctly when abs = TRUE", {
  x1 <- c(1, 2, 3, 4, 5)
  x2 <- c(6, 7, 8, 9, 10)
  expect_equal(cohens_d(x2, x1, abs = T), 3.1623, tolerance = 1e-3)
})

test_that("cohens_d returns warning for empty vectors", {
  x1 <- numeric(0)
  x2 <- c(1, 2, 3)
  expect_error(cohens_d(x1, x2), "Input lengths of x and y must be greater than 0")
})

test_that("cohens_d returns zero when both vectors have the same mean", {
  x1 <- c(1, 2, 3, 4, 5)
  x2 <- c(1, 2, 3, 4, 5)
  expect_equal(cohens_d(x1, x2), 0)
})

test_that("cohens_d works with single element difference", {
  x1 <- c(1)
  x2 <- c(2)
  expect_true(is.nan(cohens_d(x1, x2)))
})
