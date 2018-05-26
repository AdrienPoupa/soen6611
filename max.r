a <- c(0:25)

max_custom <- function(array) {
  value = array[[1]]
  
  for(i in array) {
    if (i > value) {
      value = i
    }
  }

  return (value)
}

max_custom(a)
