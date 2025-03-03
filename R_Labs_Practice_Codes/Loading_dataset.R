# Getting started with RStudio and Installing packages
# Objectives of Exercise:
#   After completing this lab, you will be able to:
#   Load the datasets
#   Install libraries


# Step 1 - Click the plus symbol on the top left and click R Script.
# Step 2 - Now you load the iris dataset. Enter the following lines into the editor window that appears. Then select all the text, and click Run just above the editor window.
library (datasets)
data("iris")
View(iris)

#Step 4 - Now you can find the different species present in the data set. Enter the following command in the editor window and click Run.
unique(iris$Species)

