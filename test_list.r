#source("DescriptiveStatistics.r")
source("ds_list.r")

# s <- descriptive_statistics(numbers = array(1:4, dim=c(4)))
# s$print_data()

list <- c(93, 45, 75, 96, 80, 24, 2, 66)

my_list <- ds_list(items = list)
my_list$sort()
print(my_list$items)