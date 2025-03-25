                                          # The httr library
                                          #==================



# The httr library allows you to build and sends http requests
library(httr)


                                            # Textual Data
                                            #===============


# you can make GET request via get() method
url <- 'https://www.ibm.com/'
response <- GET(url)
response


# status of the request or response
response$status


# header of the response
response_header <- headers(response)
response_header

# date of send request
response["date"]

# type of the content
response_header['content-type']


# obtain the original request via response object
response$request$headers

# obtaining the content length
response_header['content-length']


# content of HTTP response
content(response)


                                        # Image Data
                                        #============


# you can load other types of data for non-text requests like images, consider the URL of the following image:
image_url<-'https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-RP0101EN-Coursera/v2/M3_R_Foundamentals/images/SN_web_lightmode.png'

# now we can make the image requests
image_response <- GET(image_url)


# image headers
image_header <- headers(image_response)

# type of the content
image_header["content-type"]


# An image is a response object that contains the image as a bytes-like object. As a result, we must save it using a file object. First, we specify the file path and name
image <- content(image_response, "raw")
writeBin(image, "logo.png")


                                      # Get Request with URL Parameters
                                      #================================


url_get <- 'http://httpbin.org/get'

# we want to add some URL parameters to above GET API. To do so, we simply create a named list with parameter names and values:
query_parameters <- list(name = "Yan", ID = "123")

# make the GET request to 'http://httpbin.org/get' with the two arameters
response <- GET(url_get, query_parameters)

# print out the updated URL and see the attached URL parameters.
response$request$url

# The attribute args of the response had the name and values:
content(response)$args



                                      # Post Requests
                                      #===============

# POST is used to send data to a server in a request body.
url_post <- 'http://httpbin.org/post'


# To make a POST request we use the POST() function, the list body is passed to the parameter  body :
body <- list(course_name = "Introduction to R", instructor = "Yan")
response <- POST('http://httpbin.org/post', body = body)
response

# We can see POST request has a body stored in fields attribute
response$request$fields






































