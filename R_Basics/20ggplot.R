#install.packages('ggplot2')
library(ggplot2)

# ggplot is a function. We provide data to ggplot
# mapping (x-axis and y-axis)
# geometry (scatter, line, box plot)

library(readxl)
X<- read_excel("ggdata.xlsx", sheet = "gg1", 
                     col_types = c("text", "numeric", "text", 
                                   "text"))

ggplot(data = X, mapping = aes(x=crop, y=height))+geom_point()

ggplot(X, aes(crop, height))+geom_point(size=2)+geom_line()

ggplot(data = X) +
  geom_point(mapping = aes(x = crop, y = height, color = water))

ggplot(data = X) +
  geom_point(mapping = aes(x = crop, y = height, size = water))

ggplot(data = X) +
  geom_point(mapping = aes(x = crop, y = height, shape = water))



ggplot(X, aes(crop, height))+geom_boxplot()

ggplot(X, aes(crop, height))+geom_boxplot()+geom_point(size= 2, colour = "blue", alpha=0.5)

ggplot(X, aes(crop, height, color=water))+geom_boxplot()

ggplot(X, aes(crop, height, fill=water))+geom_boxplot()+facet_wrap(~fert.type)

