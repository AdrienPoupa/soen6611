# R version 3.3.2 
# Author: Team J
# SOEN 6611 Project 
# Descriptive Statistics
# May-June 2018

source("math_util.r")
source("ds_list.r")

descriptive_statistics <- setRefClass("descriptive_statistics", 
fields = list(grades = "ds_list"),
methods = list(
  max_grade = function() {
    return (grades$items[[grades$size()]])
  },

  min_grade = function() {
    return (grades$items[[1]])
  },

  grades_median = function() {
    size <- grades$size()
    
    if(size %% 2 == 1) {
      value <- grades$items[[size / 2 + 1]]
    }
    else{
      value <- (grades$items[[size / 2]] + grades$items[[size / 2 + 1 ]]) / 2
    }
    return (value)
  },

  grades_mean = function() {
    counter <- 0

    size <- grades$size()

    for(i in 1:size){
      counter <- counter + grades$items[[i]]
    }

    value <- counter/size

    return (value)
  },

  sum_custom = function(list) {
    sum <- 0
    
    for(item in list){
      sum <- sum + item
    }

    return (sum)
  },

  grades_std_dev = function() {
    math <- math_util()

    mean <- grades_mean()

    std_dev <- math$square_root(sum_custom((grades$items - mean)^2) / grades$size())
	  
    return (std_dev)
  },

  grades_mode = function() {
    n <- grades$size()
    max <- 1
    current_amount <- 1
    n <- n-1
    mode_res <- c()
    mode_size <- 0
    uniq_amount <- 1
    
    for (i in c(1:n)) {
      if (grades$items[i] == grades$items[i + 1]) {
        current_amount <- current_amount+1
      }
      else {
        if(current_amount == max) {
          mode_res <- c(mode_res, grades$items[i])
          mode_size <- mode_size+1
        }
        if (current_amount > max) {
          max <- current_amount
          mode_res <- grades$items[i]
          mode_size <- 1
        }
        current_amount <- 1
        uniq_amount <- uniq_amount+1
      }
    }
    
    if (current_amount == max) {
      mode_res <- c(mode_res, grades$items[n+1])
      mode_size <- mode_size+1
    }
    
    if (current_amount > max) {
      mode_res <- grades$items[i]
      mode_size <- 1
    }
    
    if (mode_size == uniq_amount)
      mode_res <- c("NA")
    
    return (mode_res)
  }
)
)
