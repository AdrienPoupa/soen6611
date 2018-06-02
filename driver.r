#R version 3.3.2 
#Author: Group J
#SOEN 6611 Project 
#Driver
#May-June 2018

source("DescriptiveStatistics.r")
source("data.r")

list <- c(93, 45, 75, 96, 80, 24, 2, 66)
data <- c(93, 45, 75, 96, 80, 45, 2, 66)
d <- read_csv("data.csv", col_types = cols(data = col_double()))
sizeoflist(d)

max_custom(list)
min_custom(list)
mean_custom(list)
median(data)

#mode(data)
#standard deviation
std(data)

print(paste0("median: ", get_median()))