# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  difference <- abs(length(v1) - length(v2))
  difference.string <- paste('The difference in lenths is', difference)
  return(difference.string)
}
# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3), 1:200)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  difference <- length(a) - length(b)
  if(difference > 0) {
    statement <- paste('Your first vector is longer by', difference, 'elements')
  } else {
    statement <- paste('Your second vector is longer by', difference, 'elements')
  }
  return(statement)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(1:20, 16:40)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(a,b) {
  difference <- length(a) - length(b)
  if (difference > 0) {
    vector.name <- deparse(substitute(a))
    statement <- paste('Vector', vector.name, 'is longer by', difference, 'elements')
  } else {
    vector.name <- deparse(substitute(b))
    statement <- paste('Vector', vector.name, 'is longer by', difference, 'elements')
  }
  return(statement)
}
x <- 1:23
y <- 4:28
DescribeDifference(x,y)
