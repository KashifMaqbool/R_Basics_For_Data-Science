# Creating a data frame
movies <- data.frame(name = c("Toy Story", "Akira", "The Breakfast Club", "The Artist",
                              "Modern Times", "Fight Club", "City of God", "The Untouchables"),
                     year = c(1995, 1998, 1985, 2011, 1936, 1999, 2002, 1987))
movies

# Printing first column
movies$name

# Printing second column
movies$year

# First row of the movies data
movies[1, ]

# select the first and second rows but only with first column selected from the movies data frame
movies[1:2, 1]

# str() function to obtain textual information about an object
str(movies)

# class() to tell the type of column of the data frame
class(movies$name)

# Head function
head(movies)

# Tail function
tail(movies)

# Get the row with name "Toy Story"
select_row <- movies["name"] == "Toy Story"
toy_story <- movies[select_row, c("name", "year")]
toy_story

# Adding column in the data frame
movies["length"]<- c(81, 125, 97, 100, 87, 139, 130, 119)
movies

# Adding row in the data frame
movies <- rbind(movies, c(name = "NewMovie", year = 2001, length = 90))
movies

# Deleting the row
movies <- movies[-9, ]
movies

# Deleting the column
movies <- movies[,-3 ]
movies

# Another way to delete a column is to assign the column as null
movies[["length"]] <- NULL
movies

