#R version 3.3.2 
#Author: Group J
#SOEN 6611 Project 
#Descriptive Statistics
#May-June 2018

source("sizeoflist.r")
source("sqrt.r")
source("sum.r")
source("radix.r")
source("data.r")

max_custom <- function(array) {
  value = array[[1]]
  
  for(i in array) {
    if (i > value) {
      value = i
    }
  }
	set_max(value)
  return (value)
}

min_custom <- function(array) {
  value = array[[1]]
  
  for(i in array) {
    if (i < value) {
      value = i
    }
  }
set_min(value)
  return (value)
}

median <- function(list) {
	size <- sizeoflist (list)
	list <- radixsort (list, size)
	
	if(size %% 2 == 1) {
		value <- list[[size/2+1]]
		set_median(value)
		return (value)
	}
	else{
		value <- (list[[size/2]]+list[[size/2+1]])/2
		set_median(value)
		return (value)    
	}
}

mean_custom <- function(list) {
  counter <- 0
  
  for(i in list){
    counter <- counter + i
  }
  value <- counter/sizeoflist (list)
	set_mean(value)
  return (value)
}

std <- function(list) {
	value <- square_root(sum_custom((list - mean_custom(list))^2) / (sizeoflist(list) - 1))
	set_stddev(value)
    return(value)
}

mode <- function(array) {
  
  sortedArray <- radixsort(array, n)
  max <- 1
  currentAmount <- 1
  n <- n-1
  modeRes <- c()
  
  for (i in c(1:n)) {
    if (array[i]==array[i+1]){
      currentAmount <- currentAmount+1
    }
    else {
      if(currentAmount == max) {
        modeRes <- c(modeRes, array[i])
      }
      if (currentAmount > max) {
        max <- currentAmount
        modeRes <- array[i]
      }
      currentAmount <- 1
    }
  }
  
  if (currentAmount == max)
    modeRes <- c(modeRes, array[n+1])
  if (currentAmount > max) 
    modeRes <- array[i]
  
  print("modeRes")
  return (modeRes)
}
