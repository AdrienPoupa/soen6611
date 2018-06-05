#R version 3.3.2 
#Author: Farhan Shaheen
#Unit Testing in R
#June 2018

source("descriptive_statistics.r")
source("data.r")

list <- read.csv("data.csv",header=F)$V1

# https://www.calculatorsoup.com/calculators/statistics/mean-median-mode.php
are_equal(max_custom(list), 100)
are_equal(min_custom(list), 1)
are_equal(mean_custom(list), 47.324)
are_equal(median(list), 46)
are_equal(mode(list), c(22))

# http://www.calculator.net/standard-deviation-calculator.html
are_equal(std(list), 28.733475888528)

# R compare with R built-in functions
max(list)
min(list)
mean(list)
median(list)

# data <- c(93, 45, 75, 96, 80, 45, 2, 66, 75)
# Test function only
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

getmode(list)
sd(list)

are_equal(max_custom(list), max(list))
are_equal(min_custom(list), min(list))
are_equal(mean_custom(list), mean(list))
are_equal(median(list), median(list))
are_equal(mode(list), getmode(list))
are_equal(std(list), sd(list))

