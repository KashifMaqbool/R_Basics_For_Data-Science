# Error catching with tryCatch
# has error
tryCatch(10 + "a", error = function(e)
  print("oops something went wrong."))


# without error
tryCatch(10 + 10, error = function(e)
  print("oops something went wrong."))


# Another example of trycatch with loop
tryCatch(
  for(i in 1:3){
    print(i + "a")
  }
  ,error = function(e)
    print("Error Found!")
)


# Handling Warning
tryCatch(as.integer("A"),
         warning = function(e)
           print("Warnning!"))