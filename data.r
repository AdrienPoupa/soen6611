#R version 3.3.2 
#Author: Group J
#SOEN 6611 Project 
#Data
#May-June 2018

m <- 0
Mx <- 0
o <- 0
d <- 0
mu <- 0
sd <- 0

#setters
set_min <- function(min){
	m <- min
}
set_max <- function(max){
	M <- max
}
set_mode <- function(mode){
	o <- mode
}
set_median <- function(median){
	d <- median
}
set_mean <- function(mean){
	mu <- mean
}
set_stddev <- function(stddev){
	sd <- stddev
}
#getters
get_min <- funtion(){
	return m
}
get_max <- funtion(){
	return Mx
}
get_mode <- funtion(){
	return o
}
get_median <- funtion(){
	return d
}
get_mean <- funtion(){
	return mu
}
get_sd <- funtion(){
	return sd
}


