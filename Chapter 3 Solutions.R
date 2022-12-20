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

x <- c(1, 2, 3, 4, 5)
for (i in x) {
  h <- h * i
}
h <-h^(1/length(x))
# NOT SURE THIS IS RIGHT

# 7
x <- 1:10 # test set

# for loop
for (i in 1:length(x)){
  if (i%%3 == 0){
    y <- y+x[i]
  }
}
# vectorised
y <- sum(x[-1][c(FALSE, FALSE, TRUE)])

# 8

# Answer clearly found by looking at the quad3.r function in spuRs
# clear the workspace
rm(list=ls())
# input
a2 <- 1
a1 <- 4
a0 <- 5
# These first 3 if / if else statements returns the possibilities where roots can not be calculated
if (a2 == 0 && a1 == 0 && a0 == 0) {
  roots <- NA
} else if (a2 == 0 && a1 == 0) {
  roots <- NULL
} else if (a2 == 0) {
  roots <- -a0/a1
} else {
  # calculate the discriminant
  discrim <- a1^2 - 4*a2*a0
  # calculate the roots depending on the value of the discriminant
  if (discrim > 0) {
  roots <- c( (-a1 + sqrt(a1^2 - 4*a2*a0))/(2*a2),
              (-a1 - sqrt(a1^2 - 4*a2*a0))/(2*a2) )
} else {
  if (discrim == 0) {
    roots <- -a1/(2*a2)
  } else {
    roots <- NULL
    }
  }
}

# 9 

# a
# threexplus1array.r
x <- 3
for (i in length(x)) {
  show(x)
  if (x[i] %% 2 == 0) {
    x[i+1] <- x[i]/2
  } else {
    x[i+1] <- 3*x[i] + 1
  }
} 
show(x)
plot(x, type="l") # IS THIS REALLY THE ONLY THING YOU HAVE TO DO?

# b 
# program spuRs/resources/scripts/predprey.r
# Lotka-Volterra predator-prey equations
br <- 0.04   # growth rate of rabbits
dr <- 0.0005 # death rate of rabbits due to predation
df <- 0.2    # death rate of foxes
bf <- 0.1    # efficiency of turning predated rabbits into foxes 
x <- 4000
y <- 100
i= 1
while (x > 3900) {
  cat("x =", x, " y =", y, "\n")
  x.new <- (1+br)*x - dr*x*y
  y.new <- (1-df)*y + bf*dr*x*y
  plot(x, y, type="l")
  x[i+1] <- x.new
  y[i+1] <- y.new 
  i = i +1
}
plot(x, y, type="l")
# DOES RUN SMOOTHLY YET

# 10 

x <- rnorm(n=100) # Draw random obs to test
x.min <- x[1] #set initialy min
for (i in 1:length(x)) {
  if (x.min > x[i]) {
    x.min <- x[i]
    print(x.min) #print x.min to see if loop works
  }
}

# 11
x <- rnorm(n=100) #setting 2 random vectors 
y <- rnorm(n=100)

# HAVENT DONE YET
# merge function from Rfast2 is good

# 12

x <- sum(ceiling(6*runif(2)))
# use this: http://math.oxford.emory.edu/site/home/futurePages/rProjectCraps/




# 13

t <- seq(0,10, 0.01)
x <- sqrt(t) * cos(2*pi*t)
y <- 2*pi*t * sin(2*pi*t)
plot(x,y,type="l")

# 14 

# program: spuRs/resources/scripts/threexplus1.r
x <- 3
for (i in 1:3) {
  if (x %% 2 == 0) {
    x <- x/2
  } else {
    x <- 3*x + 1
  }
}
show(x)

# 15

N <- 100
Toggle <- rep(0, N) # 0 toggle off, 1 toggle on
for (i in 1:N) {
  Select = seq(i, N, i) # selects the toggles to switch
  Toggle_off <- Toggle[Select] == 0 #toggles to switch that are off
  Toggle[Select][Toggle_off]   <- 1 #toggles being switched on
  Toggle[Select][!Toggle_off]  <- 0 #toggles being swithced off
}
which(Toggle == 1)

# Thanks to Leopoldo (I assume is the original coder) from Aarhus university BSS for the code to problem 15


