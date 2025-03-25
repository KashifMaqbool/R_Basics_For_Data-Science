# Exporting as a csv file
#========================

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

# exporting as a csv file
write.csv(oscar_actors, file = "movies-db.csv", row.names = FALSE)

# OR

write.table(oscar_actors, file = "movies_db.csv", row.names = FALSE, col.names = FALSE, sep = "," )



# exporting as an excel file
install.packages("xlsx")
library(xlsx)

write.xlsx(oscar_actors, file = "movies-db.xlsx", sheetName = "Sheet1", col.names = TRUE, row.names = FALSE)





























