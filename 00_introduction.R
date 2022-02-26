# Part 1: Basic commands
# 01. Function
funcname(input1, input2)

# 02. c() (concatenate)
x <- c(1,2,4,3)
x

# 03. Help command
?c()

# 04. length()
length(x)

# 05. ls() (list all objects)
ls()

# 06. rm() (remove object)
rm(x)

# 07. rm(list=ls()) (remove all objects at once)
rm(list=ls())

# 08. matrix()
x = matrix(data=c(1,2,3,4), nrow=2, ncol=2)
x
# another way 
x=matrix(c(1,2,3,4),2,2)

# 09. sqrt() and x^2
sqrt(x)
x^2

# 10. rnorm() (generates a vector of random variables)
# Example: create two correlated sets of numbers x and y and compute the correlation
x=rnorm(50)
y=x+rnorm(50,mean=50,sd=1)
cor(x,y)
# Note: by default rnorm() creates standard normal random variables with mean 0 and variance 1
# Note: mean and variance can be altered using the mean and sd arguments

# 11. set.seed() (reproduce the exact same set of random numbers)
set.seed(1303)
rnorm(50)

# Example
set.seed(3)
y=rnorm(100)
mean(y)
var(y)
sqrt(var(y))
sd(y)

# Part 2: Graphics
# 01. plot(x,y) (scatterplot of x versus y)
?plot
x=rnorm(100)
y=rnorm(100)
plot(x,y)
plot(x,y,xlab='this is the x-axis', ylab='this is the y-axis', main='Plot of X vs Y')

# 02. pdf() jpeg() (saves the output of an R plot)
# pdf("Figure.pdf")
# plot(x,y,col='green')
# dev.off() # this indicates R that we are done creating the plot

# 03. seq() (create a sequence of numbers)
x=seq(1,10)
x=seq(1:10)
x=seq(-pi,pi,lenght=50)

# 04. contour() (topographical of 3-dimensional data)
?contour
y=x
f=outer(x,y,function(x,y)cos(y)/1+x^2)
contour(x,y,f)
contour(x,y,f,nlevels=45,add=T)

fa = (f-t(f))/2
contour(x,y,fa,nlevels=15)
# Note: image() works the same way as contour but with color coded plot on the z value axis (heatmap)
# Alternatively persp() produces a 3-dimensional plot (the arguments theta and phi control the view angles)
image(x,y,fa)
persp(x,y,fa)
persp(x,y,fa, theta=30)
persp(x,y,fa,theta=30, phi=20)
persp(x,y,fa,theta=30, phi=40)
persp(x,y,fa,theta=30, phi=70)


# Part 3: Indexing data
# Suggestion: think about the possible output and run one at the time
A=matrix(1:16,4,4)
A

A[2,3] # [i,j] row i (second) and column j (third)
A[c(1,3),c(2,4)]
A[1:3,2:4]
A[1:2,]
A[,1:2]
A[1,]
A[-c(1,3),] # the negatie sign tells R to keep all rows or columns except those indicated in the index
dim(A) # outputs the number of rows followed by the number of columns of a given matrix

# Part 4: Loading data
Auto=read.table("Auto.data", header=T, na.strings="?")
fix(Auto) # view data in a spreadsheet
# Note: header=T or header=TRUE tells R that the first line contains the variable names
# Note: na.strings tells R that any time it sees a particular character or set of characters (eg. question mark) it should be treated as a missing element

# Load csv data
Auto=read.csv("Auto.csv", header=T, na.strings="?")
fix(Auto)
dim(Auto)

# Omit rows with missing observations
Auto=na.omit(Auto)
dim(Auto)
# Note: once data are loaded correctly we can use names() to check the variable names
names(Auto)





