# rvest is a popular web scraping package in R language
library(rvest)

# we also have to load the httr library for http requests
library(httr)

# Creating a html variable
simple_html_text <- "
<html>
    <body>
        <p>This is a test html page</p>
    </body>
</html>
"


# using html_read function create root node of the html
root_node <- read_html(simple_html_text)
root_node

# you can check the class of your root node
class(root_node)


# Creating a remote html root node
#=================================

online_html_node <- read_html("http://www.ibm.com")
online_html_node

# download the R home page and save it to an HTML file locally called r.html
download.file('https://www.r-project.org', destfile = 'r.html')


# Create a html_node from the local r.html file
html_node <- read_html('~/R_forDataScience/R_Basics/17r.html')
html_node

# read an HTML page from a character variable, a URL, or a local HTML file
simple_html_text1 <- "
<html>
    <body>
        <p style=\"color:red;\">This is a test html page</p>
    </body>
</html>"

root_node <- read_html(simple_html_text1)
root_node

# Get the child <body> node from <html> root_node
body_node <- html_node(root_node, "body")
body_node

# Get the child <p> node from its <body> node
p_node <- html_node(body_node, "p")
p_content<-html_text(p_node)
p_content

# Use the p_node as the first argument to get its attribute
style_attr <- html_attr(p_node, "style")
style_attr



# the downloaded r.html file (from https://www.r-project.org) has an <img> node representing an image URL to R logo image (a relative path on its web server), let's try to find the image URL and download it.
#==============================================================================================================================================================================================================

# Write your code below. Don't forget to press Shift+Enter to execute the cell
url <- 'https://www.r-project.org'
html_node <- read_html('~/R_forDataScience/R_Basics/17r.html')

# Get the image node using its root node
img_node <- html_node(html_node, "img")
# Get the "src" attribute of img node, representing the image location
img_relative_path <- html_attr(img_node, "src")
img_relative_path

# Paste img_relative_path with 'https://www.r-project.org'
image_path <- paste(url, img_relative_path, sep="")
# Use GET request to get the image
image_response<-GET(image_path)


# Use writeBin() function to save the returned bytes into an image file.
# Parse the body from the response as bytes
image <- content(image_response, "raw")
# Write the bytes to a png file
writeBin(image, "r.png")




# Analyze and load table from html page in R Data Frame
table_url <- "https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DA0321EN-SkillsNetwork/labs/datasets/HTMLColorCodes.html"


# first get the <table> node using html_node function
root_node <-read_html(table_url)
table_node <- html_node(root_node, "table")
table_node

# Extract content from table_node and convert the data into a dataframe
color_data_frame <- html_table(table_node)
head(color_data_frame)


# we have seen that the table headers are parsed as the first row, so, we have to fix it manually
names(color_data_frame)

# Convert the first row as column names
names(color_data_frame) <- as.matrix(color_data_frame[1, ])
# Then remove the first row
data_frame <- color_data_frame[-1, ]

head(data_frame)
names(color_data_frame)







