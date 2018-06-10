# R version 3.3.2 
# Author: Team J
# SOEN 6611 Project 
# Unit testing the square root function
# May-June 2018

library("assertthat")

source("math_util.r")

math_util_test <- setRefClass("math_util_test",
        methods = list(
          constructor = function(){
            math <- math_util()
            are_equal(math$square_root(81), 9)
          }
        )
)

main<-math_util_test()
main$constructor()