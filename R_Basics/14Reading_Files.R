                                  # Downloading the Data Sets
                                  # ==========================


# Downloading the csv file
download.file("https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-RP0101EN-Coursera/v2/dataset/movies-db.csv", 
              destfile="movies-db.csv")

# Downloading the xlxs file
download.file("https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-RP0101EN-Coursera/v2/dataset/movies-db.xls", 
              destfile="movies-db.xls")



                                  # Reading the csv files
                                  #=======================

my_data <- read.csv("~/R_forDataScience/R_Basics/movies-db.csv")
my_data

# print first six rows
head(my_data)

# print structure of the data set
str(my_data)


# print summary of the data set
summary(my_data)



                                    # Reading the Excel files
                                    #========================

# download the "readxl" library to read the excel files
install.packages("readxl")

# load the library 
library(readxl)

# load the excel file
excel_data <- read_excel("~/R_forDataScience/R_Basics/14movies-db.xls")

# printing the excel file or data set 
excel_data


# printing the firsr six rows
head(excel_data)

# Structure of the excel file
str(excel_data)

# Summary of the excel file
summary(excel_data)



                                # Reading rows and columns in the  Excel files
                                #=============================================

# retrieve a subset of the data e.g a column named "name"
excel_data["name"]

# retrieve the data for the "name" column
excel_data$name

# you can do the same thing  by this function
excel_data[["name"]]

# retrieving the first row from the data
excel_data[1, ]

# retrieving the first column from the data
excel_data [ ,1]

# retrieving the first row of the data but with first column
excel_data[1, c("name", "length_min")]

                                # Accessing Built-in Data sets in R
                                #==================================

# Displays a list of the inbuilt datasets. Opens in a new "window".
data()

# print any data set
women

# information of the data sets
help(women)


# loading the co2 data set
CO2
summary(CO2)
head(CO2)



























