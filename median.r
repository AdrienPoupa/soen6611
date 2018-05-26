#R version 3.3.2 
#Author: Farhan Shaheen
#Median function in R
#May 2018

source("sizeoflist.r")

median <- function(list) {
  size <- sizeoflist (list)
    
  if(size %% 2 == 1) {
      return (list[[size/2+1]])
  }
  else{
      return ((list[[size/2]]+list[[size/2+1]])/2)    
  }
}

data <- c(1:6)
median(data)
data <- c(2:6)
median(data)
