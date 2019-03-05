# load libraries

# source the user-edited config file
source("R/config.R")

print(config)
print(my_global_variable)

# Test that my_global_variable doesn't equal 42
stopifnot(my_global_variable==42)
