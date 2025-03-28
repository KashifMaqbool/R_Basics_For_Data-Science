# Code to check that packages are installed or not in Rstudio

packages <- c("ggplot2", "plotly", "ggvis", "lattice", "leaflet", 
              "dygraphs", "rCharts", "ggExtra", "shiny", "ggmap", "highcharter",
              "googleVis", "tidyverse")

for (package in packages) {
  if (package %in% installed.packages()) {
    print(paste(package, "is installed."))
  } else {
    print(paste(package, "is not installed."))
  }
}

# Command to Install Packages
install.packages("tidyverse")

# Chapter 1 of book for Data visualization
data <- read.csv("~/R_forDataScience/R_Basics/21weather.csv")
View(data)

# Creating a ggplot
library(tidyverse)
ggplot(data=mpg) +
  geom_point(mapping = aes(x=displ, y=hwy))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ,y=hwy))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy,color=class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy,size=class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
# Bottom
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy,shape=class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy),color="blue")

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class,nrow=2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv~cyl)
