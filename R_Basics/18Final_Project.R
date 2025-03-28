#TASK 1: Get a COVID-19 pandemic Wiki page using HTTP request
#=============================================================

# Installing important packages  for this project
install.packages("httr")
install.packages("rvest")

# Load the important packages
library(httr)
library(rvest)

get_wiki_covid19_page <- function() {
  # Define the base URL
  wiki_base_url <- "https://en.wikipedia.org/w/index.php"
  
  # Define query parameters as a list
  query_params <- list(title = "Template:COVID-19_testing_by_country")
  
  # Send HTTP GET request
  response <- GET(url = wiki_base_url, query = query_params)
  
  # Return the response
  return(response)
}

# Call the function and store the response
wiki_response <- get_wiki_covid19_page()

# Print the status of the request
print(status_code(wiki_response))

# View the first few lines of the retrieved HTML content
content(wiki_response, as = "text")



# TASK 2: Extract COVID-19 testing data table from the wiki HTML page
#=====================================================================

# Read HTML content from the response
wiki_html <- read_html(wiki_response)

# Extract all table nodes from the HTML
table_nodes <- html_nodes(wiki_html, "table")

# Read the second table and convert it into a data frame
covid_testing_data <- html_table(table_nodes[2], fill = TRUE)

# Convert to data frame
covid_testing_df <- as.data.frame(covid_testing_data)

# Print the extracted data frame
print(covid_testing_df)


# TASK 3: Pre-process and export the extracted data frame
#========================================================

# Preprocessing function
preprocess_covid_data_frame <- function(data_frame) {
  
  shape <- dim(data_frame)
  
  # Remove the "World" row
  data_frame <- data_frame[!(data_frame$`Country.or.region` == "World"), ]
  
  # Remove the last row (assuming dataset has 172 rows, adjust if needed)
  data_frame <- data_frame[1:(nrow(data_frame) - 1), ]
  
  # Remove irrelevant columns
  data_frame["Ref."] <- NULL
  data_frame["Units.b."] <- NULL
  
  # Renaming columns for clarity
  names(data_frame) <- c("country", "date", "tested", "confirmed", 
                         "confirmed_tested_ratio", "tested_population_ratio", 
                         "confirmed_population_ratio")
  
  # Convert column data types
  data_frame$country <- as.factor(data_frame$country)
  data_frame$date <- as.factor(data_frame$date)
  data_frame$tested <- as.numeric(gsub(",", "", data_frame$tested))
  data_frame$confirmed <- as.numeric(gsub(",", "", data_frame$confirmed))
  data_frame$confirmed_tested_ratio <- as.numeric(gsub(",", "", data_frame$confirmed_tested_ratio))
  data_frame$tested_population_ratio <- as.numeric(gsub(",", "", data_frame$tested_population_ratio))
  data_frame$confirmed_population_ratio <- as.numeric(gsub(",", "", data_frame$confirmed_population_ratio))
  
  return(data_frame)
}

# Call the function to preprocess the extracted data
processed_covid_df <- preprocess_covid_data_frame(covid_testing_df)

# Print the summary of the processed data frame
print(summary(processed_covid_df))

# Define the file path
file_path <- "~/R_forDataScience/R_Basics/18covid.csv"

# Save the processed data frame to the specified path
write.csv(processed_covid_df, file_path, row.names = FALSE)

# Check if the file is successfully saved
print(file_path)
print(file.exists(file_path))  # TRUE if the file was successfully created


#TASK 4: Get a subset of the extracted data frame¶
#=================================================

# Read the processed COVID-19 data from the CSV file
covid_data <- read.csv("~/R_forDataScience/R_Basics/18covid.csv")

# Get rows 5 to 10 with only 'country' and 'confirmed' columns
subset_covid_data <- covid_data[5:10, c("country", "confirmed")]

# Print the subset
print(subset_covid_data)


#TASK 5: Calculate worldwide COVID testing positive ratio
#========================================================
# Get total confirmed cases worldwide
total_confirmed <- sum(covid_data$confirmed, na.rm = TRUE)

# Get total tested cases worldwide
total_tested <- sum(covid_data$tested, na.rm = TRUE)

# Calculate positive ratio
positive_ratio <- total_confirmed / total_tested

# Print results
print(paste("Total Confirmed Cases Worldwide:", total_confirmed))
print(paste("Total Tested Cases Worldwide:", total_tested))
print(paste("Worldwide COVID Testing Positive Ratio:", round(positive_ratio, 4)))


# TASK 6: Get a country list which reported their testing data
#============================================================

# Extract the 'country' column
country_list <- covid_data$country

# Check the class of the column
print(paste("Class of country column:", class(country_list)))

# Convert the country column to character for sorting
country_list <- as.character(country_list)

# Sort the country names in A to Z order
sorted_countries_AtoZ <- sort(country_list)

# Sort the country names in Z to A order
sorted_countries_ZtoA <- sort(country_list, decreasing = TRUE)

# Print the sorted country list in Z to A order
print("Sorted countries (Z to A):")
print(sorted_countries_ZtoA)




# TASK 7: Identify countries names with a specific pattern
#========================================================

# Use grep with regular expression to find country names starting with "United"
matched_countries <- grep("^United.+", country_list, value = TRUE)

# Print the matched country names
print("Countries starting with 'United':")
print(matched_countries)



# TASK 8: Pick two countries you are interested, and then review their testing data
#=================================================================================

# Define the countries of interest
countries <- c("Pakistan", "India")

# Filter using Base R subset() and select relevant columns
comparison_data <- subset(covid_data, country %in% countries, 
                          select = c("country", "confirmed", "confirmed_population_ratio"))

# Print the result
print(comparison_data)


#TASK 9: Compare which one of the selected countries has a larger ratio of confirmed cases to population
#=================================================================================

# Extract values
ratio_pakistan <- comparison_data[comparison_data$country == "Pakistan", "confirmed_population_ratio"]
ratio_india <- comparison_data[comparison_data$country == "India", "confirmed_population_ratio"]

# Compare and print the result
if (ratio_pakistan > ratio_india) {
  print("Pakistan has a higher confirmed cases to population ratio.")
} else if (ratio_pakistan < ratio_india) {
  print("India has a higher confirmed cases to population ratio.")
} else {
  print("Both countries have the same confirmed cases to population ratio.")
}


#TASK 10: Find countries with confirmed to population ratio rate less than a threshold
#=================================================================================

# Define the threshold
threshold <- 0.01  # 0.01 OR 1%

# Filter countries where confirmed.population.ratio is below the threshold
low_risk_countries <- subset(covid_data, confirmed_population_ratio < threshold, 
                             select = c("country", "confirmed_population_ratio"))

# Print the result
print(low_risk_countries)





























































