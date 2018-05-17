a <- c(0:25)

min_custom <- function(array) {
  value = array[[1]]
  
  for(i in array) {
    if (i < value) {
      value = i
    }
  }

  return (value)
}

min_custom(a)
