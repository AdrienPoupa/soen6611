#R version 3.3.2 
#Author: Kaushik Samanta
#Standard deviation function in R
#May 2018

#Import all functions necessary to run standard deviation

source("sqrt.r")

source("sum.r")

source("median.r")

source("mean.r")

std <- function(list) {
    return(square_root(sum_custom((list - mean_custom(list))^2) / (sizeoflist(list) - 1)))
}

data <- c(1:6)

std(data)
