#R version 3.3.2 
#Author: Ksenia Popova
#Returns most frequent number in array
#May 2018

mode <- function(array) {

  n <- sizeoflist(array)
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
    print(paste0("currentAmount: ", currentAmount))
  }
  
  if (currentAmount == max)
    modeRes <- c(modeRes, array[n+1])
  if (currentAmount > max) 
    modeRes <- array[i]
  
  print(max)
  return (modeRes)
}


array <- c(93,45,75,96,80,45,2,66)
mode(array)
