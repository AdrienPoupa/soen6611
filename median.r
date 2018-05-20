#R version 3.3.2 
#Author: Farhan Shaheen
#Median function in R
#May 2018

sizeoflist <- function(list) {
  s <- 0
  
  for(i in list){
    s <- s + 1
  }
  return (s)
}

median <- function(list) {
  size <- sizeoflist (list)
  print(size)
  print(list)
    
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
