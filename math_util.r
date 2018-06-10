# R version 3.3.2 
# Author: Team J
# SOEN 6611 Project 
# Square root function in R
# May-June 2018

math_util <- setRefClass("math_util",
methods = list(
    square_root = function(num) {
        low = 0
        high = num
        mid = 0

        while (high - low > 0.0000001) {
            mid <- low + (high - low) / 2
            if (mid*mid > num)
                high <- mid
            else
                low <- mid
        }    
        return (mid)
    }
)
)

