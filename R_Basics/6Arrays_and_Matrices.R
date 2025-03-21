                              # Arrays
                            #===========
# Creating an vector
movie_vector <- c("Akira", "Toy Story", "Room", "The Wave", "Whiplash",
                  "Star Wars", "The Ring", "The Artist", "Jumanji")
movie_vector

# Converting vector into array
movie_array <- array(movie_vector, dim = c(3,3))
movie_array

movie_array1 <- array(movie_vector, dim = c(4,3))
movie_array1

# Array Indexing
movie_array1


# Printing rows and columns
movie_array1[1,3]

# Printing row
movie_array1[1,]

# Printing column
movie_array1[,1]

# Printing dimension of the array
dim(movie_array1)

# Math Operations on array
num_vector <- c(125, 81, 118, 81, 106, 121, 95, 100, 104)
num_array <- array(num_vector, dim = c(3,3))
num_array

# Add operation on the number array
num_array + 10

# Using Logical Conditions to Subset Arrays
logical_array <- num_array < 100
logical_array

movie_array[logical_array]

# Problem: find all movie titles with length less than or equal to 90 minutes
movie_name_vector <- c("Akira", "Toy Story", "Room", "The Wave", "Whiplash",
                  "Star Wars", "The Ring", "The Artist", "Jumanji")
movie_name_array <- array(x_vector, dim = c(3,3))
movie_name_array

movie_length_vector <- c(125, 81, 118, 81, 106, 121, 95, 100, 104)
movie_length_array <- array(num_vector, dim = c(3,3))
movie_length_array

condition_array <- movie_length_array <= 90
condition_array

movie_name_array[condition_array] # condition to find movie names less than 90 minutes.


                                         # Matrices
                                        #============

movie_vector1 <- c("Akira", "Toy Story", "Room", "The Wave", "Whiplash",
                  "Star Wars", "The Ring", "The Artist", "Jumanji", "Heroin", "Sadqa", "Lobster")
movie_matrix <- matrix(movie_vector1, nrow = 4, ncol = 3)
movie_matrix

# Accessing elements of a matrix
movie_matrix[1,3]
movie_matrix
movie_matrix[1:3]
movie_matrix[2:3]
movie_matrix[1:3, 2:3]

# Concatenation function
upcoming_movie <- c("Hulk", "Heroism")
new_vector <- c(movie_vector1, upcoming_movie)
new_vector











