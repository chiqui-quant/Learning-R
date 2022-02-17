# This is my first script using R
# There are 2 ways to assign values to a variable in R
a = 1 + 2
a <- 1 + 2 

# Note: R is case sensitive
a <- 10
A <- 21 
# The above are 2 different variables

# There are 3 kinds of values
numeric_value = 0.2
numeric_value = 10

logical_value = TRUE
logical_value = F

character_value <- "Once upon a time..."
character_value2 <- 'another kind of synthax'
# Note: you can add quotes inside strings in the following way
character_quote = "a quote \" inside quotes"

# There are also factor variables to define categories
factor_variable <- as.factor("male")

# We can create vectors
vec1 <- c(1,2,2,23,0.3)
vec2 <- c(T,F,FALSE,TRUE,F)
vec3 <- c("a","b","c", "something else", "20")
vec4 <- as.factor(c("female", "male", "male", "female"))

# We can also create lists that contain anything
my_list <- list(vec1, vec2, vec3)

# And we can put lists inside lists
my_list <- list(vec1, vec2, vec3, 20, list(vec1,vec2, vec3), mean)

# Data frames
data.frame(vec1, vec2)
# We can define the columns
data.frame(a = c(1,2,2,23,0.2), b = vec2)

# Matrix
my_matrix <- matrix(vec3, 2,3)

# Indexing
vec1[2]
vec2[3]
vec3[1:6]
vec4[-1]

# Let's construct a function (note: value1 and value2 are the arguments of the function)
new_sum <- function(value1, value2) {
  results <- value1 + value2
  return(results)
}

# Now let's use it
new_sum(10,20)

?mean #this allows you to see how it works, to read the documentation
