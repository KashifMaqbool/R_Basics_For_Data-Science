                            #Vectors
# Numeric Vectors
movie_year <- c(2016, 2017, 2019, 2020)
movie_year

# Character Vector
movie_name <- c("Akira", "Dushman", "Tiger", "Liger")
movie_name

# Logical Vector
movie_name == "Akira"
movie_year == 2018


                        #Vector Operations
# Adding more elemets in a vector
movie_year
movie_year <- c(movie_year, 1985:1990)
movie_year

# Length of a Vector
length(movie_year)
length(movie_name)

# Head and tail of a vector
head(movie_year)
head(movie_year, n = 2)
head(movie_year, 2)
tail(movie_year)
tail(movie_year, 2)

# Sorting Vector & Minimum and Maximum
sort(movie_year)
sort(movie_year, decreasing = TRUE)
min(movie_year)
max(movie_year)


# Average of Numbers
# via sum function
movie_cost <- c(5,6.1, 8,4,10,9)
sum(movie_cost)/6
# via mean function
mean(movie_cost)


# Giving names to values in a vector
movie_year
names(movie_year) <- c("Movie1", "Movie2", "Movie3", "Movie4", "Movie5", "Movie6", "Movie7", "Movie8", "Movie9", "Movie10")
movie_year
# retrieving values based on names
movie_year[c("Movie1", "Movie2")]
# add numbers in values
movie_year[1] + 10
# printing names of movies
names(movie_year)


# Movie Release year difference
movie_differ <- movie_year["Movie2"] - movie_year["Movie1"]
movie_differ


# Summarizing Vectors
summary(movie_cost)


# Logical operations on the vectors
movie_year
movie_year < 2015
movie_year >2015
movie_year == 2015
movie_year != 2015



                                # Subsetting Vectors

# retrieving elements or items from vectors
movie_year[1]

# to retrieve multiple items u can pass it in a vector
movie_year[c(1,3)]
movie_year[c(0:5)]

# retrieving a vector without some of its items
movie_name[-1]

# assigning vector to a new variable
movie_naam <- movie_name[-1]
movie_naam

# missing values
movie_year[12]
miss_value <- c(1,3,NA,5,6,NA,7,8,9,10,NA)
miss_value

# function to check missing value
is.na(miss_value)

# Subsetting vectors based on a logical condition
movie_year < 2000
movie_year[movie_year >= 2000]

                                # Factors
movie_type_vector <- c("Comedy", "Animation", "Crime", "Comedy", "Animation")
movie_type_vector

# vector into factor
movie_type_factor <- as.factor(movie_type_vector)
movie_type_factor
levels(movie_type_factor)

# summarizing factors
summary(movie_type_factor)

# sorting factors
sort(movie_type_factor)
sort(summary(movie_type_factor))

# ordered factors
movie_legth <- c("Very Short", "Short", "Medium","Short", "Long", "Very Short", "Very Long")
movie_legth

# creating ordered factor
movie_legth_factor <- factor(movie_legth, ordered = TRUE,
                             levels = c("Very Short", "Short", "Medium", "Long", "Very Long"))
movie_legth_factor

#Coding Exercise: in the code cell below, update the order of the movie_length factor from Very Long to Very Short
movie_legth_factor1 <- factor(movie_legth, ordered = TRUE,
                             levels = c("Very Long", "Long", "Medium", "Short", "Very Short"))
movie_legth_factor1



