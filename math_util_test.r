library("assertthat")

source("sqrt.r")

math <- math_util()
are_equal(math$square_root(81), 9)