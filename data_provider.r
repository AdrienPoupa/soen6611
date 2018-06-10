# R version 3.3.2 
# Author: Team J
# SOEN 6611 Project 
# Data Provider
# May-June 2018

source("ds_list.r")

data_provider <- setRefClass("data_provider",
fields = list(grades = "ds_list"),
methods = list(
    get_random_numbers = function(){
        list <- read.csv("data.csv", header=F)$V1

        grades <<- ds_list(items = list)
        grades$sort()
        
        return (grades)
    }
)
)