#R version 3.3.2 
#Author: Group J
#SOEN 6611 Project 
#Descriptive Statistics
#May-June 2018

source("math_util.r")
source("ds_list.r")

descriptive_statistics <- setRefClass("descriptive_statistics", 
fields = list(grades = "ds_list"),
methods = list(
  max_grade = function() {
    value = grades$items[[1]]
  
    for(i in grades$items) {
      if (i > value) {
        value = i
      }
    }
    
    return (value)
  },

  min_grade = function() {
    value = grades$items[[1]]
    
    for(i in grades$items) {
      if (i < value) {
        value = i
      }
    }

    return (value)
  },

  grades_median = function() {
    grades$sort()
    size <- grades$size()
    
    if(size %% 2 == 1) {
      value <- grades$items[[size / 2 + 1]]
      return (value)
    }
    else{
      value <- (grades$items[[size / 2]] + grades$items[[size / 2 + 1 ]]) / 2

      return (value)    
    }
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
	  
    return(std_dev)
  },

  grades_mode = function() {
    n <- grades$size()
    max <- 1
    currentAmount <- 1
    n <- n-1
    modeRes <- c()
    
    for (i in c(1:n)) {
      if (grades$items[i] == grades$items[i + 1]) {
        currentAmount <- currentAmount+1
      }
      else {
        if(currentAmount == max) {
          modeRes <- c(modeRes, grades$items[i])
        }
        if (currentAmount > max) {
          max <- currentAmount
          modeRes <- grades$items[i]
        }
        currentAmount <- 1
      }
    }
    
    if (currentAmount == max)
      modeRes <- c(modeRes, grades$items[n+1])
    if (currentAmount > max) 
      modeRes <- grades$items[i]
    
    return (modeRes)
  }
)
)