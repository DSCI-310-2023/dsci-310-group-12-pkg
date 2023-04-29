# SummariseByCol test
library(dplyr)
library(testthat)
library(devtools)
library(testthat)

# Create a test data frame
test_df <- data.frame(
  group = rep(c("A", "B"), each = 5),
  target = sample(c(TRUE, FALSE), 10, replace = TRUE)
)

# Test case 1: Test if the function returns a data frame
test_that("summariseByCol returns a data frame", {
  result_df <- summariseByCol(test_df, "group")
  expect_is(result_df, "data.frame")
})

# Test case 2: Test if the function returns a data frame with the expected number of rows
test_that("summariseByCol returns a data frame with the expected number of rows", {
  result_df <- summariseByCol(test_df, "group")
  expected_rows <- length(unique(test_df$group))
  actual_rows <- nrow(result_df)
  expect_equal(actual_rows, expected_rows)
})

# Test case 3: Test if the function returns a data frame with the expected column names
test_that("summariseByCol returns a data frame with the expected column names", {
  result_df <- summariseByCol(test_df, "group")
  expected_cols <- c("group", "n")
  actual_cols <- colnames(result_df)
  expect_equal(actual_cols, expected_cols)
})

# Test case 4: Test if the function returns a data frame with the expected count of rows per group
test_that("summariseByCol returns a data frame with the expected count of rows per group", {
  result_df <- summariseByCol(test_df, "group")
  expected_counts <- c(5, 5)
  actual_counts <- result_df$n
  expect_equal(actual_counts, expected_counts)
})
