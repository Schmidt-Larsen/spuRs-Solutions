##### CHAPTHER 4 SOLUTIONS

setwd("/Users/sebastianschmidt-larsen/Documents/R/spuRs execise solutions/Data")

# 1 
# Clear the workspace
rm(list=ls())
# Input
# We assume that the file file_name consists of numeric values # separated by spaces and/or newlines
age.file_name = "/Users/sebastianschmidt-larsen/Documents/R/spuRs execise solutions/Data/age.txt"
teeth.file_name = "/Users/sebastianschmidt-larsen/Documents/R/spuRs execise solutions/Data/teeth.txt"
# Read from file
age.data <- read.table(file = age.file_name, header = TRUE)
teeth.data <- read.table(file = teeth.file_name, header = TRUE)
# Merge the data
Answer1.result <- merge(age.data, teeth.data)
# Output
print(Answer1.result)

# 2

Answer2.result <- Answer1.result[with(Answer1.result, order(Age)),]
cat("\n", "Result after sorting based on Age", "\n")
print(Answer2.result)

# 3

n <- 7 #test output
cat("Number    square    cube\n") 
for (i in 1:n) {
  square <- i^2
  cube <- i^3
  cat(format(i, width = 6),
      format(square, width = 10),
      format(cube, width = 10),
      "\n", 
      sep = "")
}

# 4 

m1<-t(matrix(rep(1:9, times=9), 9, 9)) 
m2<-matrix(rep(1:9, times=9), 9, 9)
mtable <- m1*m2 # Multiply the two matrix element wise
show(mtable) # Output

# 5 

# This follows the example on p. 57

rm(list=ls()) # Clear work space
x <- seq(1, 5, by = 0.01)
y.upper <- sqrt(3*(x^2-1))
y.lower <- -sqrt(3*(x^2-1))
y.max <- max(y.upper)
y.min <- min(y.lower)
plot(c(-4, 4), 
     c(y.min, y.max),
     type = "n", 
     xlab = "x", 
     ylab = "y")  
lines(x, y.upper)
lines(x, y.lower)
lines(-x, -y.upper)
lines(-x, -y.lower)
segments(-max(x), -y.min, x1=max(x), y1=y.min)
segments(max(x), y.max, x1=-max(x), y1=-y.max)
points(2,0)
text(2,0, "focus (2, 0)", pos=4)
points(-2,0)
text(4, y.max, "asymptote y = sqrt(3)*x", pos=2)
title("The hyperbola x^2 - y^2/3 = 1")


