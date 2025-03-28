# Print Hello world Program
print("Hello World")


# Variables
x<-1L
y<-2.2
z <- x+y
z

# Type checking
is.numeric(z)
is.integer(x)

a <- "Allah"
is.character(a)

b<- TRUE
is.logical(b)

# Class Checking
class(a)
class(b)
class(x)
class(y)
class(z)


# Type conversion
class(x)
print(as.character(x))
print(as.numeric(x))
print(as.logical(x))
print(as.integer(y)) 


# Saving type casted value in another variable
c <- 5
class(c)

int_c <- as.integer(c)
class(int_c)

char_c <- as.character(int_c)
class(char_c)


# Order of Operators
(10 +5)/3*5-4


# Wording with Strings
string <- "My name is Kashif Maqbool"
string
class(string)
as.numeric(string) #This will generate an error.