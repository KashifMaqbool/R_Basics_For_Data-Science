                                      # Predefined Functions
                                      #======================

# Mean functions
ratings <- c(8.7, 6.9, 8.5)
mean(ratings)


# sort functions
sort(ratings)
sort(ratings, decreasing = TRUE)

# Max and min function
max(ratings)
min(ratings)





                                      # User Defined Functions
                                      #========================

# simple hello world function
printhelloworld <- function(){
  print("This is a Hello World function.")
}
printhelloworld()



# add function without return
add <- function(x,y){
  x+y
}
add(3,5)



# add function with return
add <- function(x,y){
  return(x+y)
}
add(3,5)



# Using IF/ELSE statements in functions
goodRating <- function(rating){
  if(rating>=7){
    print("Rating is above than 7 and good.")
  }else{
    print("Rating is bad and less than 7.")
  }
}
goodRating(6)
goodRating(8)



#Setting default argument values in your custom functions
goodRating1 <- function(rating, threshold = 7){
  if(rating>=threshold){
    print("Rating is good.")
  }else{
    print("Rating is bad.")
  }
}
goodRating1(6)
goodRating1(8)



# Coding Practice: Write a is bad rating function to print YES if rating is under 5 and print NO if rating is above 5
goodRating2 <- function(rating, threshold){
  if(rating<=threshold){
    print("NO!")
  }else{
    print("YES!")
  }
}
goodRating2(4,7)
goodRating2(8,7)



                                    # Using Functions within Functions
                                    #==================================

# First we read the movie data into workspace
my_data <- read.csv("~/R_forDataScience/R_Basics/movies-db.csv")
head(my_data)


# Now check if the movie name is present in the data set or not
akira <- my_data[my_data$name == "Akira", "average_rating"]
akira



# First Type: simply tell that the average of this movie is good or bad 
watchmovie1 <- function(data, moviename){
  rating <- data[data["name"] == moviename, "average_rating" ]
  return(goodRating(rating))
}
watchmovie1(my_data, "Akira")



# Second type: include threshold parameter in our function if you want to watch really good movies.
watchmovie2 <- function(data, moviename, my_threshold){
  rating <- data[data$name == moviename, "average_rating"]
  return(goodRating2(rating, threshold = my_threshold))
}
watchmovie2(my_data, "Akira", 7)



# Third type: fixing threshold in parameters or defauld threshold
watchmovie2 <- function(data, moviename, my_threshold = 7){
  rating <- data[data$name == moviename, "average_rating"]
  return(goodRating2(rating, threshold = my_threshold))
}
watchmovie2(my_data, "Akira")


# Updated with Print output
watchmovie3 <- function(data, moviename, my_threshold = 7){
  rating <- data[data$name == moviename, "average_rating"]
  output <- paste("The movie rating for movie ", moviename, " is ", rating)
  print(output)
  return(goodRating2(rating, threshold = my_threshold))
}
watchmovie3(my_data, "Akira")



# if we assign the output to a variable, the variable will be assigned to YES
isWatch <- watchmovie3(my_data, "Akira")
isWatch


                              # Global and Local Variables
                              #============================

#Accessing Functions and Variables outside of the function
watchmovie4 <- function(moviename, my_threshold = 7){
  rating <- my_data[my_data$name == moviename, "average_rating"]
  output <- paste("The movie rating for movie ", moviename, " is ", rating)
  print(output)
  return(goodRating2(rating, threshold = my_threshold))
}
# Accessing Functions and this will give output
watchmovie4("Toy Story")    
watchmovie4("The Artist")
watchmovie4("Akira")
watchmovie4("City of God")
# Accessing the variables inside the function and it will give the error instead of showing the output.
output



# Applying Local and Global Variables
myFunction <- function(){
  x <- 1  # Local variable
  y <<- 2  # Global Variable
}
x
y







