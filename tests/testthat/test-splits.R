# Split function test

library(testthat)
library(devtools)

# Create a dummy data frame
set.seed(123)
df <- data.frame(
  x = rnorm(100),
  y = rnorm(100),
  target = factor(sample(c("A", "B"), 100, replace = TRUE))
)


# Use split function to split the data into training and test sets
split <- splits(df$target,0.7)
train <- df[split, ]
test <- df[!split, ]

test_that("split returns correct number of training and test set observations", {
  set.seed(123)
  df <- data.frame(
    x = rnorm(100),
    y = rnorm(100),
    target = factor(sample(c("A", "B"), 100, replace = TRUE))
  )
  
  split <- splits(df$target, 0.7)
  train <- df[split, ]
  test <- df[!split, ]
  
  expect_equal(nrow(train) + nrow(test), nrow(df))
  expect_equal(nrow(train) / nrow(df), 0.7)
})