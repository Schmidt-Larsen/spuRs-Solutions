# Solutions for Chapter 3

# Many of the solutions in this chapter draws inspiration from https://github.com/rahulsoni9/Solutions-to-Exercises-in-Introduction-to-Scientific-Programming-and-Simulation-using-R

# 1

# input
x.values <- seq(-2, 2, by = 0.1)
# for each x calculate y
n <- length(x.values)
y.values <- rep(0, n)
for (i in 1:n) {
  x <- x.values[i]
  # your expression for y goes here 
  if(x<=0){
    y <- -x^3
  } else if (x <=1) {
    y <- x^2
  } else {
    y <- sqrt(x)  
  }
  y.values[i] <- y
}
# output
plot(x.values, y.values, type = "l")

# 2
for (i in 0:n) {
  if (i == 0){
  h = 0 
  }
  ifelse
  h <- h + x^i
}

# 3 

x <- 0.3
n <- 55

x <- 6.6
n <- 8

# 4 

#For while loop
h <- 0
i <- 0
x <- 1
n <- 55
while (i <= n) {
  h <- h + x^i
  i = i+1
} 
#For vector operations
h1 <- sum(x^(0:n))

# 5

ntheta <- pi/4
pre.multiplier <- matrix(c(cos(ntheta), sin(ntheta), -sin(ntheta), cos(ntheta)), 2, 2)
x.old <- matrix(c(1,0), 2, 1)
x.new <-  pre.multiplier %*% x.old

# 6

gm = c() #geometric mean
hm = c()  #harmonic mean

for (i in 1:n){
  gm = gm * 
  hm = 
}

# 7
x <- 1:10 # test set

# for loop
out <- 0
for (i in 1:length(x)){
  if (i%%3 == 0){
    y <- y+x[i]
  }
}
# vectorised
y <- sum(x[-1][c(FALSE, FALSE, TRUE)])

# 8



# 9 
