###############################################
# 
# Function writing
#
###############################################

# writing functions is easy in R!
my_first_function <- function() {
  cat("Hello World!")
}
my_first_function()
# functions can have no arguments, or several arguments:
my_second_function <- function(times) {
  counter <- 1
  while (counter <= times) { # this is a different type of loop
    cat("Hello World!\n")
    counter <- counter + 1
  }
}
my_second_function(3)

# If you are dealing with one OTU table, turning it into
# relative abundance table is pretty easy. But what if you have 
# to do it for many OTU tables?

# Exercise: Write a function that takes in an OTU table
# and returns the relative abundance table

# Note that you can construct functions inline:
all(apply(abundances, 2, function(x) x/sum(x)) == relative_abundances)

# Save your work!

# Congratulations! You are at a level with your R understanding
# that will get you through most of STAMPS! If you feel so inclined, 
# have a look through source_system.R, parallel.R, and markdown.R, but at this point, you probably deserve
# a cold beverage and a break!
