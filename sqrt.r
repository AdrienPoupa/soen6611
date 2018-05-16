#R version 3.3.2 
#Author: Farhan Shaheen
#Square Root function in R
#May 2018

square_root <- function(num) {
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
    return(mid)
}

square_root(81)
