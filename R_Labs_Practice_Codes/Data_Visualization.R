# Creating Data Visualizations using ggplot
# Objective for Exercise
# We will create different data visualizations using the ggplot package using the inbuilt dataset in R called mtcars

# 1. Click on the + symbol on the top left and choose R Script from the menu to open a new R edit window in RStudio


# 2. Read and view the first 5 rows of the Data using the following
library(datasets)
#Load Data
data(mtcars)
#View first 5 rows
head(mtcars, 5)

# 3. Type this ?mtcars to get information about the variables. This will print the information at the bottom right panel, on the Help tab
?mtcars
?aes
View(mtcars)


# 4. Load the ggplot package and create a scatter plot of disp and mpg.
#load ggplot package
library(ggplot2)
#create a scatter plot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x = disp, y = mpg,),data=mtcars)+geom_point()
#add a title
ggplot(aes(x = disp, y = mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")
#change axis names
ggplot(aes(x = disp, y = mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles Per Gallon")



# 5. Use the following to create a boxplot of the the distribution of mpg for the individual Engine types vs Engine (0 = V-shaped, 1 = straight)
# To do this you have to make vs a string or factor.
#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

#create box plot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

#add color to the box plots to help differentiate
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + geom_boxplot(alpha=0.3) +theme(legend.position="none")


# 6. Create Histogram of the weight "wt"
ggplot(aes(x=wt), data=mtcars)+geom_histogram(binwidth = 0.5)