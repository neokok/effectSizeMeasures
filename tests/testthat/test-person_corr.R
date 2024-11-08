test_that("pearson_corr calculates correct correlation for perfect correlation", {
  x <- c(1, 2, 3, 4, 5)
  y <- c(2, 4, 6, 8, 10)

  expect_equal(pearson_corr(x, y), 1, tolerance = 1e-4)
})

test_that("pearson_corr calculates correct correlation for known inputs", {
  x <- c(1, 2, 3, 4)
  y <- c(4, 6, 7, 4)

  expect_equal(pearson_corr(x, y), 0.086066, tolerance = 1e-4)
})


test_that("pearson_corr handles vectors of different lengths with an error", {
  x <- c(1, 2, 3)
  y <- c(1, 2)

  expect_error(pearson_corr(x, y), "Input lengths of x and y must be equal")
})

test_that("pearson_corr handles empty vectors with an error", {
  x <- c()
  y <- c()

  expect_error(pearson_corr(x, y), "Input lengths of x and y must be equal")
})

test_that("pearson_corr returns error if one variable has no variance", {
  x <- c(1, 1, 1, 1, 1)
  y <- c(2, 4, 6, 8, 10)

  expect_error(pearson_corr(x, y), "Std is 0")
})


