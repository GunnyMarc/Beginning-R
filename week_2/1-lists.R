# Prior to starting this lesson, be sure to open and run the R script: 1-initLesson_lists.R, if you have
# any specific environment variables to or data to use.  Otherwise, this file is empty.  To start with
# a clean environment, run:
rm(list = ls())

# Output: "At this point you should know:
# (1) Vectors (one dimensional array): can hold numeric, character or logical values. 
# The elements in one vector all have the same datatype.
# (2) Matrices (two dimensional array): can hold numeric, character or logical values. 
# The elements in one matrix all have the same datatype.
# (3) Data frames (two-dimensional objects): can hold numeric, character or logical values. 
# Within a column all elements have the same data type, but different columns can be of different data type."
# "A list in R is similar to your to-do list at work or school: the different items on that list most 
# likely differ in length, characteristic, type of activity that has to do be done. 
# A list in R allows you to gather a variety of objects under one name (that is, the name of the list) 
# in an ordered way. These objects can be matrices, vectors, data frames, even other lists, etc. 
# It is not even required that these objects are related to each other. Just like your to-do list."
# "How to construct a list? To construct a list you use the function list():
# my_list <- list(component1, component2 ...)
# The arguments to the list function are the list components. Remember, these components 
# can be a collection of matrices, vectors."

# Output: Create a vector named my_vector with numerics from 1 up to 10.
my_vector <- 1:10 
# Hint: Create with my_vector <- 1:10.

# Output: Create a matrix named my_matrix with matrix(1:9, ncol = 3).
my_matrix <- matrix(1:9, ncol = 3)
# Hint: Create with my_matrix <- matrix(1:9, ncol = 3).

# Output: Create a data frame named my_df using the first 10 elements of the built-in data frame 'mtcars'.
my_df <- mtcars[1:10,]
# Hint: Create with my_df <- mtcars[1:10,].

# Output: Construct a list, named my_list, that contains the variables my_vector, my_matrix 
# and my_df as list components.
my_list <- list(my_vector, my_matrix, my_df)
# Hint: What do you get with my_list <- list(my_vector, my_matrix).

# Output: "Just like on your to-do list, you want to avoid not knowing or remembering what 
# the components of your list stand for. That is why you should give names to them:
# my_list <- list(name1 = your_comp1, name2 = your_comp2, ...). 
# This creates a list with the components 'name1' and 'name2' and so on."

# Output: "How to create a named list? Construct a list, named my_list, 
# that contains the variables my_vector, my_matrix, and my_df as list components. 
# But this time, add names to the list components. Namely, use for my_matrix the name 'mat', 
# for my_vector the name 'vec' and for my_df the name 'df'."
my_list <- list(vec=my_vector, mat=my_matrix, df=my_df)
# Hint: What do you get with 'my_list<-list(vec=my_vector, mat=my_matrix)'?

# Output: "How to change names for the components of the list?
# If you want to name your lists after you have created them, or change the names of the 
# list components, you can use the names() function as you did with vectors. 
# The following commands are equivalent to the assignment above: my_list<-list(comp1,comp2,...) 
# followed by names(my_list)<-c(\"name1\",\"name2\",...) "

# Output: "Change the names of my_list component with the names() function. Namely, 
# use for my_matrix the name 'mat2', for my_vector the name 'vec2' and for my_df the name 'df2'."
names(my_list) <- c("vec2", "mat2", "df2")
# Hint: Check the description of the names() function using '?name'. Pay attention to matching the order of the list components and their names.

# Output: "Print my_list to the screen."
my_list
# Hint: my_list.

# Output: "Your list will often be built out of numerous elements and components. 
# How to select elements from the list? Getting a single element, multiple elements, 
# or a component out of the list is not always straightforward.
# One way to select a component is using the numbered position of that component in the list. 
# Remember that the list is the ordered set of elements. For example, to 'grab' the first component
# of my_list you type my_list[[1]]"

# Output: "Print the third element of my_list on the console"
my_list[[3]]
# Hint: Simply type my_list[[3]] on the console

# Output: "Another way to check is to refer to the names of the list components, 
# such as my_list[[\"vec2\"]]. Note that you may use either single or double quotes for 
# the name string inside the double brackets."

# Output: "Print the second element of my_list by its name."
my_list[["mat2"]]
# Hint: Check the names of the components of my_list with names(my_list) command

# Output: "An equivalent way to 'grab' a list component by its name is by using 
# the \\$-sign, such as 'my_list$vec2'."

# Output: "Print the dimensions of the second element of my_list using the \\$-sign and the dim() command."
dim(my_list$mat2)
# Hint: Check the dimensions with dim(my_list$mat2)

# Output: "The components of the list can be complex objects, such as vectors, matrices, data frames, etc.
# How to select specific elements out of an individual component in the list? 
# For example, with my_list[[2]][1:2,] you select the first two rows from the second 
# component of the list"

# Output: "Print the the first three columns of the third component of my_list."
my_list[[3]][,1:3]
# Hint: Try my_list[[3]][,1:3]

# Output: "How to add more components to the list? In order to conveniently add elements to lists 
# you use the concatenate function c(): c(_my_list , some_variable)
# This will simply extend the original list, my_list, with the component some_variable. 
# This component gets appended to the end of the list."
# "If you want to give the new list item a name, you just add the name as you did before: 
# c(my_list, new_name = some_variable) "

# Output: "Let's append the author of the to-do list creator to my_list. 
# The new component name should be 'author' and its value is the string \"CISCO student\""
c(my_list, author="CISCO student")
# Hint: Try c(my_list, author="CISCO student")

# Output: "Finally, have a look at the struture of my_list with the str() function."
str(my_list)
# Hint: str(my_list)

# Output: "Congratulations! You mastered yet another data type in R: lists. 
# You can think of a list as super data type, as it allows you to embrace many different types
# of data as an ordered list of components. By now you should have learned (a) how to create a
# list with the list() function, (b0 how to append new components to the list with the c() 
# concatenation function, (c) how to examine the structure of the list with the str() function,
# (d) how to name specific components of the list with the names() function, (e) how to 'grab' 
# specific components of the list by their numbered position or name, and (f) how to extract 
# specific elements of such individual components of the list. Finally, remember that lists are
# fundamental when your function must return more than a single object; this way you pack multiple
# objects into a single list and return this list. This is the only way to return more than one
# object from the function."

