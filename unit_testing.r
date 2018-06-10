# R version 3.3.2 
# Author: Team J
# SOEN 6611 Project 
# Unit testing in R
# May-June 2018

library("assertthat")

source("descriptive_statistics.r")
source("data_provider.r")

unit_testing <- setRefClass("unit_testing",
        fields = list(dp = "data_provider", ds = "descriptive_statistics"),
        methods = list(
          constructor = function(){
            dp <<- data_provider()
            random_grades <- dp$get_random_numbers()
            
            ds <<- descriptive_statistics(grades = random_grades)
            
            max_grade <- ds$max_grade()
            min_grade <- ds$min_grade()
            grades_mean <- ds$grades_mean()
            grades_median <- ds$grades_median()
            grades_mode <- ds$grades_mode()
            
            #standard deviation
            std_dev <- ds$grades_std_dev()
            
            # https://www.calculatorsoup.com/calculators/statistics/mean-median-mode.php
            print(paste0(are_equal(max_grade, 100)))
            print(paste0(are_equal(min_grade, 1)))
            print(paste0(are_equal(grades_mean, 47.324)))
            print(paste0(are_equal(grades_median, 46)))
            print(paste0(are_equal(grades_mode, c(22))))
            
            # http://www.calculator.net/standard-deviation-calculator.html
            are_equal(std_dev, 28.719105557103)
            
            # R compare with R built-in functions
            max(random_grades$items)
            min(random_grades$items)
            mean(random_grades$items)
            median(random_grades$items)
            
            # data <- c(93, 45, 75, 96, 80, 45, 2, 66, 75)
            # Test function only
            get_mode <- function(v) {
              uniqv <- unique(v)
              uniqv[which.max(tabulate(match(v, uniqv)))]
            }
            
            get_mode(random_grades$items)
            sd(random_grades$items)
            
            print(paste0(are_equal(max_grade, max(random_grades$items))))
            print(paste0(are_equal(min_grade, min(random_grades$items))))
            print(paste0(are_equal(grades_mean, mean(random_grades$items))))
            print(paste0(are_equal(grades_median, median(random_grades$items))))
            print(paste0(are_equal(grades_mode, get_mode(random_grades$items))))
          }
        )
)

main<-unit_testing()
main$constructor()