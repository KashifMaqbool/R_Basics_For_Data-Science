#Data Set
#=========

# code to downnload the data set
download.file("https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-RP0101EN-Coursera/v2/dataset/The_Artist.txt", destfile="The_Artist.txt")


# Reading text files
#====================

# read the txt file by readLines method
my_data <- readLines("~/R_forDataScience/R_Basics/11The_Artist.txt")
my_data


# find the size of the file in bytes
file.size("~/R_forDataScience/R_Basics/11The_Artist.txt")


# length of the text
length(my_data)

# reading txt files with scan method
my_data1 <- scan("~/R_forDataScience/R_Basics/11The_Artist.txt", "")
my_data1

# Now check the length of the text, it will be different than the above finding.
length(my_data1)

# Coding Exercise: Get the frequency for each word in “The_Artist.txt” file. (HINT: convert my_data1 to factor and use summary() function)
factor1 <- factor(my_data1)
summary(factor1)


# use it as the vector
vector1 <- c(my_data1)
summary(vector1)


# String Operations
#====================

# first function is nchar() which will return the total number of characters in the given string.
nchar(my_data)

# text to upper case
toupper(my_data)
toupper(my_data[1])
toupper(my_data[2])
toupper(my_data[3])

# text to lower case
tolower(my_data)
tolower(my_data[1])
tolower(my_data[2])
tolower(my_data[3])
tolower(my_data[4])

# replacing the text
chartr(" ","-", my_data)


# split given string word by word
char_list <- strsplit(my_data[1], " ")
char_list
word_list <- unlist(char_list)
word_list


#Coding Exercise: Replace the space characters in the 3rd element of my_data vector with underscore _, then split the string by _
replace <- chartr(" ", "_", my_data[3])
replace
splitt <- strsplit(my_data[3], " ")
splitt
unlistt <- unlist(splitt)
unlistt


# sorting the text in R
sort_listt <- sort(unlistt)
sort_listt


# using paste method to concatenate the text
paste1 <- paste(sort_listt, collapse = " ")
paste1

paste2 <- paste(my_data[3], collapse = " ")
paste2


# printing substring from the text
substring <- substr(my_data[3], start = 5, stop = 50)
substring

# remove the space from the text with the help of trim method
trimws(my_data[1])

# reading the string from end or printing it form end using str_sub method
library(stringr)
str_sub(my_data[3], -50, -5)


# Regular Expression
#====================

# Load sample email.csv file
email_df <- read.csv("https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-RP0101EN-Coursera/v2/dataset/email%20list.csv")
email_df



#  search the email list to find which one matches an email pattern
email_df
grep("@.+",  c("test@testing.com" , "test2@testing.com" , "not an email"))


# grep also has an extra parameter called ‘value’ that changes the output to display the strings instead of the list positions.
email_df
grep("@.+", c("test@testing.com", "not an email", "test2@testing.com"), value = TRUE)


# Coding Exercise: Use a regular expression to check if a string is an email address ending with .com
grep("@.+\\.com", c("test@testing.com", "not an email", "test2@testing.com", "lets,com", "kashif@gmail.com"), value = TRUE)


# gsub function is used to swap the string in any text
gsub("@.+", "aroma555@gmail.com",  c("test@testing.com", "not an email", "test2@testing.com", "lets,com", "kashif@gmail.com"))
gsub(".+@.+", "aroma555@gmail.com", c("test@testing.com", "not an email", "test2@testing.com", "lets,com", "kashif@gmail.com"))



# The functions below, regexpr and regmatches, work in conjunction to extract the matches found by a regular expression specified in regexpr.
matches <- regexpr("@.+", c("test@testing.com", "not an email", "test2@testing.com"))
regmatches(c("test@testing.com", "not an email", "test2@testing.com"), matches)


# This function is actually perfect for our problem since we simply need to extract the specific information we want.
# So let’s use it with the regular expression we defined above and store the extracted strings in a new column in our data frame.
match <- regexpr("@.+", email_df[,"Email"])
email_df[,"Domain"] = regmatches(email_df[,"Email"], match)

# And this is the resulting dataframe:
email_df


