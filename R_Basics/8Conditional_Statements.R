# About Dataset
#===============
# To check current working directory
getwd()


# code to download the dataset
download.file("https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-RP0101EN-Coursera/v2/dataset/movies-db.csv", destfile="movies-db.csv")


# code to download the data set
movies_data <- read.csv("~/R_forDataScience/R_Basics/movies-db.csv", header=TRUE, sep=",")

# Conditional Statements
#========================

# If statement
movie_year = 2002
if(movie_year > 2000){
  print('Movie year is greater than 2000')
}

# If else statement
movie_year1 = 1997
if(movie_year1 > 2000){
    print('Movie year is greater than 2000')
}else{
  print('Movie year is not greater than 2000') 
}


# Logical "and" Operator
movie_year2 = 1997
if(movie_year2 < 2000 & movie_year2 > 1990 ) {
  print('Movie year between 1990 and 2000') 
}


# Logical "or" Operator
if(movie_year2 > 2010 | movie_year2 < 2000 ) {
  print('Movie year is not between 2000 and 2010') 
}



# Logical "not" Operator
movie_year <- 1997
if(movie_year != 1998) {
  print('Movie year is not 1998') 
}


# Subset
decade = 'recent'
if(decade == 'recent' ){
  subset(movies_data, year >= 2000)
} else { # If not...
  subset(movies_data, year < 2000)
}







