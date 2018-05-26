#R version 3.3.2 
#Author: Kaushik Samanta
#Mean function in R
#May 2018

source("sizeoflist.r")

mean_custom <- function(list) {
  counter <- 0
  
  for(i in list){
    counter <- counter + i
  }

  return (counter/sizeoflist (list))
}

