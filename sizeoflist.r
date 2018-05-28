#R version 3.3.2 
#Author: Farhan Shaheen
#List Size function in R
#May 2018

sizeoflist <- function(list) {
  s <- 0
  
  for(i in list){
    s <- s + 1
  }
  return (s)
}
