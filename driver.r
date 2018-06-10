# R version 3.3.2 
# Author: Team J
# SOEN 6611 Project 
# Driver
# May-June 2018

source("descriptive_statistics.r")
source("data_provider.r")

driver <- setRefClass("driver",
     fields = list(dp = "data_provider", ds = "descriptive_statistics"),
     methods = list(
       constructor = function(){
         dp <<- data_provider()
         random_grades <- dp$get_random_numbers()
         
         ds <<- descriptive_statistics(grades = random_grades)
         
         max_grade <- ds$max_grade()
         min_grade <- ds$min_grade()
         grades_mean <- ds$grades_mean()
         grades_median <- ds$grades_median()
         grades_mode <- ds$grades_mode()
         
         #standard deviation
         std_dev <- ds$grades_std_dev()
         
         print(paste0("maximum grade: ", max_grade))
         print(paste0("minimum grade: ", min_grade))
         print(paste0("grades mean: ", grades_mean))
         print(paste0("grades median: ", grades_median))
         print(paste0("grades mode: ", grades_mode))
         print(paste0("grades standard deviation: ", std_dev))
       }
     )
)

main<-driver()
main$constructor()
