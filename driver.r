#R version 3.3.2 
#Author: Group J
#SOEN 6611 Project 
#Driver
#May-June 2018

source("DescriptiveStatistics.r")
source("data.r")

list <- read.csv("data.csv",header=F)$V1
n <- length(list)
#array <- radixsort(array, n)

max_custom(list)
min_custom(list)
mean_custom(list)
median(list)

mode(list)

#standard deviation
std(list)

print(paste0("median: ", get_median()))