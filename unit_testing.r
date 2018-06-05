#R version 3.3.2 
#Author: Farhan Shaheen
#Unit Testing in R
#June 2018

library("assertthat")

source("descriptive_statistics.r")
source("data_provider.r")

dp <- data_provider()
random_grades <- dp$get_random_numbers()

ds <- descriptive_statistics(grades = random_grades)

max_grade <- ds$max_grade()
min_grade <- ds$min_grade()
grades_mean <- ds$grades_mean()
grades_median <- ds$grades_median()
grades_mode <- ds$grades_mode()

#standard deviation
std_dev <- ds$grades_std_dev()

# https://www.calculatorsoup.com/calculators/statistics/mean-median-mode.php
are_equal(max_grade, 100)
are_equal(min_grade, 1)
are_equal(grades_mean, 47.324)
are_equal(grades_median, 46)
are_equal(grades_mode, c(22))

# http://www.calculator.net/standard-deviation-calculator.html
are_equal(std_dev, 28.719105557103)

# R compare with R built-in functions
max(random_grades$items)
min(random_grades$items)
mean(random_grades$items)
median(random_grades$items)

# data <- c(93, 45, 75, 96, 80, 45, 2, 66, 75)
# Test function only
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

getmode(random_grades$items)
sd(random_grades$items)

are_equal(max_grade, max(random_grades$items))
are_equal(min_grade, min(random_grades$items))
are_equal(grades_mean, mean(random_grades$items))
are_equal(grades_median, median(random_grades$items))
are_equal(grades_mode, getmode(random_grades$items))
