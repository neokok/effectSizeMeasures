
<!-- README.md is generated from README.Rmd. Please edit that file -->

# effectSizeMeasures

<!-- badges: start -->

![R-CMD-check](https://github.com/neokok/effectSizeMeasures/actions/workflows/R-CMD-check.yaml/badge.svg)
[![Codecov test
coverage](https://codecov.io/gh/neokok/effectSizeMeasures/graph/badge.svg)](https://app.codecov.io/gh/neokok/effectSizeMeasures)

<!-- badges: end -->

The goal of effectSizeMeasures is to provides tools to calculate
different effect size metrics for statistical analysis. It allows for
efficient calculations of five different effect size measures: Pearson’s
correlation coefficient, coefficient of determination, odds ratio, risk
ratio (relative risk), and Cohen’s d. 

## Installation

You can install the development version of effectSizeMeasures from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("neokok/effectSizeMeasures")
```

## Example

These are basic examples which show you how to solve utilize the
functions:

``` r
library(effectSizeMeasures)
```

Example use of calculating Pearson’s correlation coefficient:

``` r
pearson_corr(c(1, 2, 3, 4), c(4, 6, 7, 4))
#> [1] 0.0860663
```

Example use of calculating coefficient of determination:

``` r
coef_determination(c(1, 2, 3, 4), c(4, 6, 7, 4))
#> [1] 0.007407407
```

Example use of calculating odds ratio with the following table:

|             | Diseased | Non-Diseased |
|-------------|----------|--------------|
| Exposed     | 20       | 380          |
| Non-Exposed | 6        | 594          |

``` r
odds_ratio(matrix(c(20, 6, 380, 594), nrow = 2, ncol = 2))
#> [1] 5.210526
```

Example use of calculating risk ratio with the following table:

|             | Diseased | Non-Diseased |
|-------------|----------|--------------|
| Exposed     | 20       | 380          |
| Non-Exposed | 6        | 594          |

``` r
risk_ratio(matrix(c(20, 6, 380, 594), nrow = 2, ncol = 2))
#> [1] 5
```

Example use of calculating Cohen’s d:

``` r
cohens_d(c(1, 2, 3, 4), c(4, 6, 7, 4), TRUE)
#> [1] 1.965121
```
