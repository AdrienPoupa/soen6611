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

  for(i in 1:length(list)){
    counter <- counter + list[[i]]
  }

  value <- counter/length(list)
	set_mean(value)
  return (value)
}

std <- function(list) {
	value <- square_root(sum_custom((list - mean_custom(list))^2) / (sizeoflist(list) - 1))
	set_stddev(value)
    return(value)
}

mode <- function(array) {
  
  n <- length(array)
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
  
  return (modeRes)
}

################
getmax <- function(list, n){
  max = list[[1]]
  for(i in 2:n){
    if(list[[i]] > max)
      max = list[[i]];
  }
  return (max)
}

countsort <- function(list, n, digitno){
  outputlist <- c(1:n)
  i <- 0
  count <- c(0,0,0,0,0,0,0,0,0,0)
  
  # count didgit occurences
  for(i in 1:n){
    j <- ((list[[i]]/digitno) %% 10) + 1 
    count[[j]] <- count[[j]] + 1 
  }
  
  for(i in 2:10){
    count[[i]] <- count[[i]] + count[[i-1]] 
  }
  
  for(i in n:1){
    k <- ((list[[i]]/digitno) %% 10) + 1
    l <- count[[k]]
    outputlist[[l]] <- list[[i]]
    count[[k]] <- count[[k]] - 1
  }
  return (outputlist)
}

radixsort <- function(list,n){
  # find maximun number from the list
  max = getmax(list, n)
  j <- 1
  for(digitno in 1:(max/j)){
    list <- countsort(list, n, digitno)
    j <- j + 1
  }
  return (list)
}



