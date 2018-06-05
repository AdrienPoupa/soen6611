source("ds_list.r")

data_provider <- setRefClass("data_provider",
methods = list(
    get_random_numbers = function(){
        list <- read.csv("data.csv",header=F)$V1
        grades <- ds_list(items = list)
        return (grades)
    }
)
)