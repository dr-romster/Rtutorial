# Answers (for those too lazy/frustrated/bored to bother having a go themselves)

# Exercise 1

# Create a variable ‘a’ consisting of text strings:
# John, Paul, George, Ringo

a <- c("John", "Paul", "George", "Ringo")


# Create a vector ‘b’ consisting of the numbers:
# 200, 515, 180	, 160

b <- c(200, 515, 180, 160)


# Divide every component of b by 2, and assign the results as b

b <- b/2


# Add your name to `a`, and add a number to `b`

a <- c(a, "me")
b <- c(b, -100000)


# Exercise 2


# Use the data.frame() command to create a data frame (df) with 
# a column of numbers (a) and a column of letters (b)

d <- c(1,2,3,4)
e <- c("a", "b", "c", "d")

df <- data.frame(numbers=d, letters=e)

# Call the 1st row of the data frame

df[1,]

# Call the 2nd column of the data frame

df[,2]

# Call the 3rd value in the 1st column of the data frame

df[3,1]

# Change the value at this location to something random

df[3,1] <- 42



# Exercise 3 - basic plotting

x <- seq(0, 50, 5)
y <- seq(0, 200, 20)
y2 <- seq(0 ,100, 10)

plot(x,y, xlab = 'Time')
points(x, y2, col = 'red2')


