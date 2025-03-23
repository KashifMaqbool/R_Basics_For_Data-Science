# Data set or Data Frame
oscar_actors <- data.frame(
  ID = 1:10,
  Name = c("Leonardo DiCaprio", "Meryl Streep", "Denzel Washington", "Kate Winslet", 
           "Tom Hanks", "Natalie Portman", "Joaquin Phoenix", "Charlize Theron", 
           "Anthony Hopkins", "Jennifer Lawrence"),
  Birth_Date = c("19741111", "19490622", "19541228", "19751005", 
                 "19560709", "1981069", "19741028", "19750807", 
                 "19371231", "19900815"),
  Oscar_Win_Year = c(2016, 1983, 2002, 2009, 1994, 2011, 2020, 2003, 1992, 2013),
  Category = c("Best Actor", "Best Actress", "Best Actor", "Best Actress", 
               "Best Actor", "Best Actress", "Best Actor", "Best Actress", 
               "Best Actor", "Best Actress")
)
# Printing data frame
oscar_actors
print(oscar_actors)


# Structure of Data Frame
typeof(oscar_actors)
str(oscar_actors)


# Convert UNIX timestamp to Date format
oscar_actors$Birth_Date <- as.Date(oscar_actors$Birth_Date, format = "%Y%m%d")
oscar_actors


oscar_actors$Birth_Date <- as.POSIXct(oscar_actors$Birth_Date, origin="1970-10-10")
oscar_actors$Birth_Date

head(oscar_actors)


# Example of manually converting a string into a Date object
date_example <- as.Date("12/08/99", format="%d/%m/%y")
print(date_example)


# Operations on Date objects
date1 <- as.Date("2023-01-01")
date2 <- as.Date("2023-02-15")

# Difference in days
diff_days <- date2 - date1
print(diff_days)

# Comparing dates
print(date1 > date2) 

# Subtracting days from a date
past_date <- date2 - 14
print(past_date)

# current data and time
current_date <- Sys.Date()
current_time <-Sys.time()
time_string <- date()

current_date
current_time
time_string

# Extracting components from a Date object
weekdays <- weekdays(current_date)
month <- months(current_date)
quarter <- quarters(current_date)

print(weekdays)
print(months)
print(quarter)


# converting date to julian format
julian <- julian(current_date)
print(julian)


# Create a sequence of dates
future_dates <- seq(from = current_date, by = "1 month", length.out = 5)
print(future_dates)




















































