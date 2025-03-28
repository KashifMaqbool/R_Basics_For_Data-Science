# Used to draw point marker in a diagram
# Parameter 1 specifies points on the x-axis.
# Parameter 2 specifies points on the y-axis.

# Example
plot(1,3)

# to draw more points use vectors
plot(c(1, 8), c(3, 10))


# Multiple Points
plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))

# We can also use this technique
x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 12)

plot(x, y)

# Sequence of the points
plot(1:10)

# Draw a line
plot(1:10, type="l")


# Put Labels in graph
plot(1:10, main="My Graph", xlab="x-axis", ylab="y-axis")

# Graph appearance
plot(1:10, col="red")

# Point size
plot(1:10, cex=2)

# Point shape
plot(1:15, pch=25, cex=2)

# Other values of pch parameter
plot(1:15, pch=16, cex=2)


