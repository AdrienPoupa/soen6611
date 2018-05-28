#R version 3.3.2 
#Author: Farhan Shaheen
#Radix Sort in R
#May 2018

#source("sizeoflist.r")
  
sizeoflist <- function(list) {
  s <- 0
  
  for(i in list){
    s <- s + 1
  }
  return (s)
}

getmax <- function(list, n){
    max = list[[1]]
    for(i in 2:n){
        if(list[[i]] > max)
            max = list[[i]];
    }
    return (max)
}

countsort <- function(list, n, digitno){
    outputlist <- c()
    i <- 0
    count <- c(0,0,0,0,0,0,0,0,0,0)

    print(paste0("n: ", n))
    ptint(list)
    for(i in 1:n){
        j <- (list[[i]]/digitno) %% 10
        count[[j]] <- count[[j]] + 1 
        print(paste0("j: ", j, " - i: ", i))
    }
}

radixsort <- function(list,n){
    # find maximun number from the list
    max = getmax(list, n)
    j <- 1
    print(list)
    for(digitno in 1:(max/j)){
        countsort(list, n, digitno)
        j <- j + 1
    }
}

list <- c(93, 45, 75, 96, 80, 24, 2, 66)
n <- sizeoflist(list)
radixsort(list, n)
print(list)
