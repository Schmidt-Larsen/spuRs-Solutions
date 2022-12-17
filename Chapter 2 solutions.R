## Chapter 2 Solutions

# Inspiration taking from a solution given to a tutorial for a course called "MAST30025: Linear Statistical Models": https://studyres.com/doc/17510020/lab-2-solution

# 1 

#Test values for variables
a = 10
b = 4
x = 2.3

#a)
z <- x^a^b
#b) 
z <- (x^a)^b
#c)
z <- 3*x^3 + 2*x^2 + 6*x + 1 #Notice that this is a polynomial so can be written easie
(z <- 3*x^3 + 2*x^2 + 6*x + 1) #8 operations
(z <- (3*x + 2)*(x^2 + 2) - 3) #6 operations
(z <- sum((x^(3:0))*c(3, 2, 6, 1))) #vectorised
#d)
#first solution
y <- abs(x)
(z <- (y %% 100 - y %% 10)/10)
#second solution
(z <- floor(y/10 - floor(y/100)*10))
#e)
z <- z + 1

# 2

#a
c(1,2,3,4,5,6,7,8,7,6,5,4,3,2,1)
c(1:8, 7:1) # best solution
#b
rep(1:5, 1:5)
#c
matrix(1, 3, 3) - diag(3) 
#d
matrix(c(0,0,7, 2,5,0, 3,0,0), 3, 3)

# 3

# assuming x > 0 
vec <- c(sqrt(3), 1)
x <- vec[1]
y <- vec[2]
(R <- sqrt(x^2 + y^2))           # radial distance
(theta.rad <- atan(y/x))         # angle in radians
(theta.deg <- theta.rad*180/pi)  # angle in degrees
# in general
vec <- c(sqrt(3), 1)
x <- vec[1]
y <- vec[2]
(R <- sqrt(x^2 + y^2))
if (x > 0) {   
  (theta.rad <- atan(y/x))
} else {
    (theta.rad <- atan(y/x) + pi)
}
(theta.deg <- theta.rad*180/pi)

# 4

vY <- 1:100
vY[!(vY %% 2 == 0) & !(vY %% 3 == 0) & !(vY %% 7 == 0)]
# or just...
vY[(vY %% 2) & (vY %% 3) & (vY %% 7)]
# Or alternately
x <- 1:100
idx <- (x %% 2 != 0) & (x %% 3 != 0) & (x %% 7 != 0)
x[idx]

# 5

queue <- c("Steve", "Russell", "Alison", "Liam")
(queue <- c("S", "R", "A", "L")) # To simplify the actions
#a
(queue <- c(queue, "B"))
#b
(queue <- queue[-1])
#c
(queue <- c("P", queue))
#d
(queue <- queue[1:(length(queue)-1)])
#e
(queue <- queue[queue != "A"])
which(queue == "R")

# 6

rm(list = ls()) #Clearing console and workspace
x <- 1 #Setting x to 1
x[3] <- 3 #Setting third element in x to 3
y <- c() #Creating an empty vector in y (NULL)
y[2] <- 2 #Setting second element of y to 2
y[3] <- y[1] #Setting third element in y the current value of the first element in y
y[2] <- y[4] #Setting second element in y the current value of the forth element in y
z[1] <- 0 #Setting first element of z to 0

# 7

Id <- diag(10)> Id <- 5*Id # one way, using the fact that Id is the identity
Id[Id != 0] <- 5 # another way, using vector indexing of a matrix7

