#R version 3.3.2 
#Author: Farhan Shaheen
#Radix Sort in R
#May 2018

source("sizeoflist.r")
  
getmax <- function(list, n){
    max = list[[1]]
    for(i in 2:n){
        if(list[[i]] > max)
            max = list[[i]];
    }
    return (max)
}

countsort <- function(list, n, digitno){
    outputlist <- c(1:n)
    i <- 0
    count <- c(0,0,0,0,0,0,0,0,0,0)

    # count didgit occurences
    for(i in 1:n){
        j <- ((list[[i]]/digitno) %% 10) + 1 
        count[[j]] <- count[[j]] + 1 
    }
    
    for(i in 2:10){
        count[[i]] <- count[[i]] + count[[i-1]] 
    }
    
    for(i in n:1){
        k <- ((list[[i]]/digitno) %% 10) + 1
        l <- count[[k]]
        outputlist[[l]] <- list[[i]]
        count[[k]] <- count[[k]] - 1
    }
    return (outputlist)
}

radixsort <- function(list,n){
    # find maximun number from the list
    max = getmax(list, n)
    j <- 1
    for(digitno in 1:(max/j)){
        list <- countsort(list, n, digitno)
        j <- j + 1
    }
    return (list)
}

list <- c(93, 45, 75, 96, 80, 24, 2, 66)
n <- sizeoflist(list)
s <- radixsort(list, n)
print(s)
