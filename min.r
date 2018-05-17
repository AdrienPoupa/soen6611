a <- c(0:25)

min_custom <- function(array) {
  value <- array[0]
  
  for(i in array) {
    #if (i < value) {
    #  value <- i
    #}
    print(i)
    print(value)
  }

  return (value)
}

min_custom(a)
