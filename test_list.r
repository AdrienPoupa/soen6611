
source("ds_list.r")

list <- c(93, 45, 75, 96, 80, 24, 2, 66)

my_list <- ds_list(items = list)
my_list$sort()
print("######################")
print(my_list$items)
print("######################")
length_of <- my_list$size()
cat("size of vector: "), length_of)
