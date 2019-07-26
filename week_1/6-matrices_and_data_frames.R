# Output: In this lesson, we'll cover matrices and data frames. Both represent 'rectangular' data types, meaning that they are used to store tabular data, with rows and columns.
# The main difference, as you'll see, is that matrices can only contain a single class of data, while data frames can consist of many different classes of data.
# Let's create a vector containing the numbers 1 through 20 using the `:` operator. 
# Store the result in a variable called my_vector.
my_vector <- 1:20
# Hint: You learned about the `:` operator in the lesson on sequences. If you wanted to create a vector containing the numbers 1, 2, and 3 (in that order), you could use either c(1, 2, 3) or 1:3. In this case, we want the numbers 1 through 20 stored in a variable called my_vector. Also, remember that you don't need the c() function when using `:`.

# Output: View the contents of the vector you just created.
my_vector
# Hint: Type my_vector to view its contents.

# Output: The dim() function tells us the 'dimensions' of an object. 
# What happens if we do dim(my_vector)?
dim(my_vector)
# Hint: Just type dim(my_vector) to see what happens.

# Output: Clearly, that's not very helpful! Since my_vector is a vector, 
# it doesn't have a `dim` attribute (so it's just NULL), but we can find its 
# length using the length() function. Try that now.
length(my_vector) 
# Hint: Type length(my_vector) to view the length of the vector you just created.

# Output: Ah! That's what we wanted. But, what happens if we give my_vector a `dim` attribute?
# Let's give it a try. Type dim(my_vector) <- c(4, 5)
dim(my_vector) <- c(4, 5)
# Hint: Type dim(my_vector) <- c(4, 5) to give my_vector a `dim` attribute.

# Output: It's okay if that last command seemed a little strange to you. 
# It should! The dim() function allows you to get OR set the `dim` attribute 
# for an R object. In this case, we assigned the value c(4, 5) to the `dim` attribute of my_vector.

# Output: Use dim(my_vector) to confirm that we've set the `dim` attribute correctly.
dim(my_vector)
# Hint: Just type dim(my_vector) to make sure the `dim` attribute has been set.

# Output: Another way to see this is by calling the attributes() function on my_vector
attributes(my_vector)
# Hint: The command attributes(my_vector) will show you all of the attributes for the my_vector object.

# Output: Just like in math class, when dealing with a 2-dimensional object 
# (think rectangular table), the first number is the number of rows and the second 
# is the number of columns. Therefore, we just gave my_vector 4 rows and 5 columns.
# But, wait! That doesn't sound like a vector any more. Well, it's not. 
# Now it's a matrix. View the contents of my_vector now to see what it looks like.
my_vector
# Hint: Type my_vector to view its contents.

# Output: Now, let's confirm it's actually a matrix by using the class() function.
# Type class(my_vector)
class(my_vector)
# Hint: Type class(my_vector) to view the class of my_vector.

# Output: Sure enough, my_vector is now a matrix. 
# We should store it in a new variable that helps us remember what it is.
# Store the value of my_vector in a new variable called my_matrix.
my_matrix <- my_vector
# Hint: Since we can't just change the name of our my_vector variable, 
# we'll assign its value to a new variable with my_matrix <- my_vector.

# Output: The example that we've used so far was meant to illustrate the point that
# a matrix is simply an atomic vector with a dimension attribute. A more direct method
# of creating the same matrix uses the matrix() function.
# Bring up the help file for the matrix() function now using the `?` function.
?matrix# Hint: The command ?matrix will do the trick.

# Output: Now, look at the documentation for the matrix function and see if you can
# figure out how to create a matrix containing the same numbers (1-20) and 
# dimensions (4 rows, 5 columns) by calling the matrix() function. 
# Store the result in a variable called my_matrix2.
my_matrix2 <- matrix(1:20, nrow=4, ncol=5)
# Hint: Call the matrix() function with three arguments -- 1:20, 
# the number of rows, and the number of columns. 
# Be sure to specify arguments by their proper names and store the result in my_matrix2 (not in my_matrix).
                                                                                                          

# Output: Finally, let's confirm that my_matrix and my_matrix2 are actually identical.
# The identical() function will tell us if its first two arguments are the same.
identical(my_matrix, my_matrix2)
# Hint: If you're not sure about this one, then checkout the documentation for identical() using the `?` function.
                                                                                                         
# Output: Now, imagine that the numbers in our table represent some measurements
# from a clinical experiment, where each row represents one patient and each column
# represents one variable for which measurements were taken.
# We may want to label the rows, so that we know which numbers belong to each 
# patient in the experiment. One way to do this is to add a column to the matrix, 
# which contains the names of all four people.
# Let's start by creating a character vector containing the names of our patients
# -- Bill, Gina, Kelly, and Sean. Remember that double quotes tell R that something 
# is a character string. Store the result in a variable called patients.
patients <- c("Bill", "Gina", "Kelly", "Sean")
# Hint: Make sure to capitalize the first letter of each name and to store the result
# in a variable called patients. Also, don't get the order of the patients mixed up!
# That would be a disaster!

# Output: Now we'll use the cbind() function to 'combine columns'. 
# Don't worry about storing the result in a new variable. 
# Just call cbind() with two arguments -- the patients vector and my_matrix.
cbind(patients, my_matrix)
# Hint: Type cbind(patients, my_matrix) to add the names of our patients to the matrix of numbers.

# Output: Something is fishy about our result! It appears that combining the character vector
# with our matrix of numbers caused everything to be enclosed in double quotes. 
# This means we're left with a matrix of character strings, which is no good.
# If you remember back to the beginning of this lesson, I told you that matrices can
# only contain ONE class of data. Therefore, when we tried to combine a character vector 
# with a numeric matrix, R was forced to 'coerce' the numbers to characters, hence the double quotes.
# This is called 'implicit coercion', because we didn't ask for it. 
# It just happened. But why didn't R just convert the names of our patients to numbers?

# Output: So, we're still left with the question of how to include the names 
# of our patients in the table without destroying the integrity of our numeric data.
# Try the following -- my_data <- data.frame(patients, my_matrix)
my_data <- data.frame(patients, my_matrix)
# Hint: Type my_data <- data.frame(patients, my_matrix), so we can explore what happens.

# Output: Now view the contents of my_data to see what comes up.
my_data
# Hint: Type my_data to view its contents.

# Output: It looks like the data.frame() function allowed us to store our 
# character vector of names right alongside our matrix of numbers. 
# That's exactly what we were hoping for! 
# Behind the scenes, the data.frame() function takes any number of arguments 
# and returns a single object of class `data.frame` that is composed of the original objects.

# Output: Let's confirm this by calling the class() function on our newly created data frame.
class(my_data)
# Hint: The class function takes one argument -- the object of which you want to determine the class.

# Output: It's also possible to assign names to the individual rows and columns of a data frame,
# which presents another possible way of determining which row of values in our table belongs to each patient.
# However, since we've already solved that problem, let's solve a different problem by assigning 
# names to the columns of our data frame so that we know what type of measurement each column represents.

# Output: Since we have six columns (including patient names), 
# we'll need to first create a vector containing one element for each column. 
# Create a character vector called cnames that contains the following values (in order) 
# -- "patient", "age", "weight", "bp", "rating", "test"
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
# Hint: Make sure all of the names are lowercase, surrounded by double quotes,
# and separated with commas. Don't forget to use the c() function.

# Output: Now, use the colnames() function to set the `colnames` attribute for our data frame.
# This is similar to the way we used the dim() function earlier in this lesson.
colnames(my_data) <- cnames
# Hint: Try colnames(my_data) <- cnames.

# Output: Let's see if that got the job done. Print the contents of my_data.
my_data
# Hint: Print the contents of my_data to the console.

# Output: In this lesson, you learned the basics of working with two very important
# and common data structures -- matrices and data frames. 
# There's much more to learn and we'll be covering more advanced topics, 
# particularly with respect to data frames, in future lessons.
