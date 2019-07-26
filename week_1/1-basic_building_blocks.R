# Output: In this lesson, we will explore some basic building blocks of the R programming
# language.

# Output: If at any point you'd like more information on a particular topic related
# to R, you can type help.start() at the prompt, which will open a menu of resources
# (either within RStudio or your default web browser, depending on your setup).
# Alternatively, a simple web search often yields the answer you're looking for.
help.start()

# Output: In its simplest form, R can be used as an interactive calculator. Type
5 + 7 # then press Enter.

# Output: R simply prints the result of 12 by default. However, R is a programming
# language and often the reason we use a programming language as opposed to a calculator
# is to automate some process or avoid unnecessary repetition.
# In this case, we may want to use our result from above in a second calculation.
# Instead of retyping 5 + 7 every time we need it, we can just create a new variable
# that stores the result.
# The way you assign a value to a variable in R is by using the assignment
# operator, which is just a ''less than'' symbol followed by a ''minus'' sign. It
# looks like this: <-
# Think of the assignment operator as an arrow. You are assigning the value
# on the right side of the arrow to the variable name on the left side of the arrow.

#Output: To assign the result of 5 + 7 to a new variable called x, you type 
x <- 5 + 7 # then hit return

# Output: You'll notice that R did not print the result of 12 this time. When you
# use the assignment operator, R assumes that you don't want to see the result immediately,
# but rather that you intend to use the result for something else later on.
x # then hit return

# Output: Now, store the result of x - 3 in a new variable called y.
y <- x - 3 # hit return

# Hint: Type y <- x - 3 and press Enter. Whether you use x - 3 or x-3 is personal
# preference, but it's good habit to include a space on either side of the assignment
# operator.
# What is the value of y? 
# Type y to find out.
y # Hit return

# Output: Now, let's create a small collection of numbers called a vector. Any object
# that contains data is called a data structure and numeric vectors are the simplest
# type of data structure in R. In fact, even a single number is considered a vector
# of length one.

# Output: The easiest way to create a vector is with the c() function, which stands
# for 'concatenate' or 'combine'. To create a vector containing the numbers 1.1,
# 9, and 3.14, type c(1.1, 9, 3.14). Try it now and store the result in a variable
# called z.
z <- c(1.1, 9, 3.14)

# TIP Inputting z <- c(1.1, 9, 3.14) will assign the vector (1.1, 9, 3.14) to a
# new variable called z. Including single spaces after the commas in the vector
# is not required, but helps make your code less cluttered and more readable.

# Output: Anytime you have questions about a particular function, you can access R's
# built-in help files via the `?` command. For example, if you want more information
# on the c() function, 
?c  # Type '?c' without the parentheses that normally follow a function name.

# Output: Type z to view its contents. Notice that there are no commas separating
z # Hit return

# Output: You can combine vectors to make a new vector. Create a new vector that contains
# z, 555, then z again in that order. Don't assign this vector to a new variable,
# so that we can just see the result immediately.
c(z, 555, z) # Hit retun.

# Output: 'Numeric vectors can be used in arithmetic expressions. Type the following
# to see what happens: z * 2 + 100.'
z * 2 + 100 # Hit return

# Hint: Enter z * 2 + 100, without assigning the result to a variable. The `*` symbol
# is used for multiplication and shares a key with the number 8 on many keyboards.
# First, R multiplied each of the three elements in z by 2. Then it added
# 100 to each element to get the result you see above.

# Output: Other common arithmetic operators are `+`, `-`, `/`, and `^` (where x^2 
# means 'x squared'). To take the square root, use the sqrt() function and to take
# the absolute value, use the abs() function.
# If you want to see the R help on abs() do the following:
?abs # or
help(abs) # Hit return

#Output: Take the square root of z - 1 and assign it to a new variable called my_sqrt.
my_sqrt <- sqrt(z - 1)

# Hint: Before we view the contents of the my_sqrt variable, what do you think it
# contains?
# CorrectAnswer: a vector of length 3
# AnswerChoices: a vector of length 3; a single number (i.e a vector of length 1);
# a vector of length 0 (i.e. an empty vector)

# Output: Print the contents of my_sqrt.
my_sqrt # Hit return.

# Output: As you may have guessed, R first subtracted 1 from each element of z, then
# took the square root of each element. This leaves you with a vector of the same
# length as the original vector z.

# Output: Now, create a new variable called my_div that gets the value of z divided
# by my_sqrt.
my_div <- z / my_sqrt # Hit return.

# Output: Go ahead and print the contents of my_div.
my_div # Hit return

# Output: When given two vectors of the same length, R simply performs the specified
# arithmetic operation (`+`, `-`, `*`, etc.) element-by-element. If the vectors
# are of different lengths, R 'recycles' the shorter vector until it is the same
# length as the longer vector.
# we did z * 2 + 100 in our earlier example, z was a vector of length
# 3, but technically 2 and 100 are each vectors of length 1.

# Output: 'Behind the scenes, R is ''recycling'' the 2 to make a vector of 2s and
# the 100 to make a vector of 100s. In other words, when you ask R to compute z
# * 2 + 100, what it really computes is this: 
z * c(2, 2, 2) + c(100, 100, 100) # Hit return

# Output: To see another example of how this vector 'recycling' works, try adding
# c(1, 2, 3, 4) and c(0, 10). Don't worry about saving the result in a new variable.
c(1, 2, 3, 4) + c(0, 10)

# TIP: Enter c(1, 2, 3, 4) + c(0, 10) in the console to see how R adds two vectors
# of different length. Don't assign the result to a variable.
# If the length of the shorter vector does not divide evenly into the length
# of the longer vector, R will still apply the 'recycling' method, but will throw
# a warning to let you know something fishy might be going on.

# Output: Try c(1, 2, 3, 4) + c(0, 10, 100) for an example.
c(1, 2, 3, 4) + c(0, 10, 100)

# Hint: Type c(1, 2, 3, 4) + c(0, 10, 100) to see how R handles adding two vectors,
# when the shorter vector's length does not divide evenly into the longer vector's
# length. Don't worry about assigning the result to a variable.