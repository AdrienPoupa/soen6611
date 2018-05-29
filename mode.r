#mode function
#returns most frequent number in array
#Author: Ksenia Popova

mode <- function(array) {
  max <- 0
  value <- array[1]
  currentAmount <- 0
  
  for (i in array) {
    currentAmount <- 0
    for (j in array){
      if (j == i) {
        currentAmount <- currentAmount+1
        
        if (currentAmount>max){
          value <- i
          max <- currentAmount
        }
      }
    }
  }
  return (value)
}

array <- c(1,2,2,1,2,1,3,1,4,4)
mode(array)

