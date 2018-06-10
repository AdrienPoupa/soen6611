# R version 3.3.2 
# Author: Team J
# SOEN 6611 Project 
# Unit testing the list
# May-June 2018

source("ds_list.r")

library("assertthat")

test_list <- setRefClass("test_list",
              methods = list(
                constructor = function(){
                  list <- c(93, 45, 75, 96, 80, 24, 2, 66)
                  
                  my_list <- ds_list(items = list)
                  my_list$sort()
                  print("######################")
                  print(my_list$items)
                  print("######################")
                  length_of <- my_list$size()
                  cat("size of vector: ", length_of)
                }
              )
)

main<-math_util_test()
main$constructor()