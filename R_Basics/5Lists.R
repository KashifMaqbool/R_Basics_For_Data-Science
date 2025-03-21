# Creating Lists
movie_list <- list("Shaheen", 2019, c("Action", "Adventure"))
movie_list

# Accessing items in a list
movie_list[1]
movie_list[2]
movie_list[3]

# Named Lists
named_movie_list <- list(name = "Shaheen", 
                         year = 2019, 
                         type = c("Action", "Adventure"))
named_movie_list

# Accessing named lists
named_movie_list$type
named_movie_list$name

# Adding new value in named list
named_movie_list["age"] <- 4
named_movie_list$age

# Modifying the named list
named_movie_list["age"] <- 5
named_movie_list$age
named_movie_list

# Removing a value from a list
named_movie_list["age"] <- NULL
named_movie_list$age
named_movie_list














