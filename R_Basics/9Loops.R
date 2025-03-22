# Loops
# For Loop
years <- movies_data['year']
for (val in years) {
  print(val)
}


# While Loop
iteration = 1
while (iteration <= 5) {
  print(c("This is iteration number:",as.character(iteration)))
    print(movies_data[iteration,]$name)
  iteration = iteration + 1
}


# Applying functions to vectors
my_vector <- c(3,4,5,6,7,8,9,10)
my_vector
my_vector + 2
my_vector ** 2
my_vector + my_vector
