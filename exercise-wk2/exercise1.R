## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# Vector sum can only add two nubmers together, it cannot add a number and a string

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# I haven't loaded the stringr package for this script

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# 


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
typeof(c(1, 2))

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vect1, vect2) {
  dif <- abs(length(vect1) - length(vect2))
  return (paste("The difference in length is ", dif))
}

# Pass two vectors of different length to your `CompareLength` function
print(CompareLength(c("x", "y"), 2:10))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  diff <- length(a) - length(b)
  if(diff > 0) {
    asdf <- paste("Your first vector is longer by ", diff, "elements.")
  } else {
    asdf <- paste("Your second vector is longer by ", diff, "elements.")
  }
  return (asdf)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(1:15, c(1, 2, 4))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1, v2, v3) {
  return (c(v1, v2, v3))
}

# Send 3 vectors to your function to test it.
CombineVectors(1:15, c(1, 2, 3), c('a', 'b'))

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses) {
  gsub("[A-Z]","", courses)
}

CapsTime(c("INFO 200", "INFO 201", "AMATH 301"))

