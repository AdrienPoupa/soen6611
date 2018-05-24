#R version 3.3.2 
#Author: Kaushik Samanta
#Sum function in R
#May 2018

sum_custom <- function(list) {
  counter <- 0
  
  for(i in list){
    counter <- counter + i
  }

  return (counter)
}
