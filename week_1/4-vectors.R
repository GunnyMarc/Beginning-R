# The file "4-customTests_vectors.R" is needed for this lesson.  
# Ensure the file is located in the same directory as "4-vectors.R" and 
# run this file in a separate RStudio script pane.

# Output: The simplest and most common data structure in R is the vector.
# 'Vectors come in two different flavors: atomic vectors and lists. An atomic
# vector contains exactly one data type, whereas a list may contain multiple data
# types. We''ll explore atomic vectors further before we get to lists.'
# In previous lessons, we dealt entirely with numeric vectors, which are one
# type of atomic vector. Other types of atomic vectors include logical, character,
# integer, and complex. In this lesson, we'll take a closer look at logical and
# character vectors.
# Logical vectors can contain the values TRUE, FALSE, and NA (for 'not available').
# These values are generated as the result of logical 'conditions'. Let's experiment
# with some simple conditions.

# Output: First, create a numeric vector num_vect that contains the values 0.5, 55,
# -10, and 6.
num_vect <- c(0.5, 55, -10, 6)
# Hint: Recall that the c() function is used for creating a vector. If you forget
# how to use it, use ?c to access the help file. Don't forget to assign the result
# to a new variable called num_vect.

# Output: Now, create a variable called tf that gets the result of num_vect < 1, which
# is read as 'num_vect is less than 1'.
tf <- num_vect < 1
# Hint: Use tf <- num_vect < 1 to assign the result of num_vect < 1 to a variable
# called tf.

# Output: What do you think tf will look like?
# It will look like: a vector of 4 logical values
# Hint: Remember our lesson on vector arithmetic? The theme was that R performs many
# operations on an element-by-element basis. We called these 'vectorized' operations.

# Output: Print the contents of tf now.
tf
# Hint: Just type tf and press Enter to view the its value.

# Output: The statement num_vect < 1 is a condition and tf tells us whether each corresponding
# element of our numeric vector num_vect satisfies this condition.
# The first element of num_vect is 0.5, which is less than 1 and therefore
# the statement 0.5 < 1 is TRUE. The second element of num_vect is 55, which is
# greater than 1, so the statement 55 < 1 is FALSE. The same logic applies for the
# third and fourth elements.
# Let's try another. Type num_vect >= 6 without assigning the result to a
# new variable.
num_vect >= 6
# Hint: Don't create a new variable on this one. We just want to see the result of
# num_vect >= 6. Make sure there is no space between the `>` and `=` symbols. Think
# of them as one symbol representing 'greater than or equal to'.

# This time, we are asking whether each individual element of num_vect is
# greater than OR equal to 6. Since only 55 and 6 are greater than or equal to 6,
# the second and fourth elements of the result are TRUE and the first and third elements
# are FALSE.
# The `<` and `>=` symbols in these examples are called 'logical operators'.
# Other logical operators include `>`, `<=`, `==` for exact equality, and `!=` for
# inequality.
# If we have two logical expressions, A and B, we can ask whether at least
# one is TRUE with A | B (logical 'or' a.k.a. 'union') or whether they are both
# TRUE with A & B (logical 'and' a.k.a. 'intersection'). Lastly, !A is the negation
# of A and is TRUE when A is FALSE and vice versa.
# It's a good idea to spend some time playing around with various combinations
# of these logical operators until you get comfortable with their use. We'll do
# a few examples here to get you started.
# Try your best to predict the result of each of the following statements.
# You can use pencil and paper to work them out if it's helpful. If you get stuck,
# just guess and you've got a 50% chance of getting the right answer!
# Output: Evaluate the following: (3 > 5) & (4 == 4)
(3 > 5) & (4 == 4)
# Hint: Break this problem down into 2 pieces. The `&` in the middle states that BOTH
# pieces are TRUE. Your job is to figure out if that is an accurate statement. If
# so, the entire condition is TRUE. If not, it's FALSE.

# Output: Evbaluate the following (TRUE == TRUE) | (TRUE == FALSE)
(TRUE == TRUE) | (TRUE == FALSE)
# Hint: Break this problem down into 2 pieces. The `|` in the middle states that AT
# LEAST ONE of the pieces is TRUE. Your job is to figure out if that is an accurate
# statement. If so, the entire condition is TRUE. If not, it's FALSE.

# Output: ((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)
((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)
# Hint: This is a tricky one. Remember that the `!` symbol negates whatever comes
# after it. There's also an 'order of operations' going on here. Conditions that
# are enclosed within parentheses should be evaluated first. Then, work your way
# outwards.
# Don't worry if you found these to be tricky. They're supposed to be. Working
# with logical statements in R takes practice, but your efforts will be rewarded
# in future lessons (e.g. subsetting and control structures).

# Character vectors are also very common in R. Double quotes are used to distinguish
# character objects, as in the following example.
# Output: 'Create a character vector that contains the following words: "My", "name",
# "is". Remember to enclose each word in its own set of double quotes, so that
# R knows they are character strings. Store the vector in a variable called my_char.'
my_char <- c("My", "name", "is")
# Hint: Type my_char <- c("My", "name", "is") to create a new variable called my_char
# that contains a character vector of length 3. Make sure that the commas separating
# the words are OUTSIDE of the double quotes, or else R thinks the commas are part
# of the words.

# Output: Print the contents of my_char to see what it looks like.
my_char
# Hint: Type my_char to view its contents.

# Right now, my_char is a character vector of length 3. Let's say we want
# to join the elements of my_char together into one continuous character string
# (i.e. a character vector of length 1). We can do this using the paste() function.
# Output: Type paste(my_char, collapse = " ") now. Make sure there's a space between
# the double quotes in the `collapse` argument. You'll see why in a second.
paste(my_char, collapse = " ")
# Hint: Use paste(my_char, collapse = " ") to collapse the words in the vector so
# they almost form a sentence. There should be a single space between the double
# quotes in the `collapse` argument so that there are single spaces separating the
# words.
# The `collapse` argument to the paste() function tells R that when we join
# together the elements of the my_char character vector, we'd like to separate them
# with single spaces.

# It seems that we're missing something.... Ah, yes! Your name!
# Output: 'To add (or ''concatenate'') your name to the end of my_char, use the c()
# function like this: c(my_char, "your_name_here"). Place your name in double quotes
# where I''ve put "your_name_here". Try it now, storing the result in a new variable
# called my_name.'
my_name <- c(my_char, "Swirl")
# Hint: Tack your name on to the end of the my_char vector using the c() function.  Be
# sure to assign the result to a new variable called my_name. If your name was "Swirl",
# you would type my_name <- c(my_char, "Swirl"). 

# Output: Take a look at the contents of my_name.
my_name
# Hint: Type my_name and press Enter to view its contents.

# Output: Now, use the paste() function once more to join the words in my_name together
#m into a single character string. Don't forget to say collapse = " "!
paste(my_name, collapse = " ")
# Hint: Use paste(my_name, collapse = " ") to join all four words together, separated
# by single spaces.

# Output: In this example, we used the paste() function to collapse the elements of
# a single character vector. paste() can also be used to join the elements of multiple
# character vectors.
# In the simplest case, we can join two character vectors that are each of
# length 1 (i.e. join two words). Try paste("Hello", "world!", sep = " "), where
# the `sep` argument tells R that we want to separate the joined elements with a
# single space.
paste("Hello", "world!", sep = " ")
# Hint: Enter paste("Hello", "world!", sep = " ") to join the two words "Hello" and
# "world", separated by a single space. There should be a single space between the
# double quotes in the `sep` argument to the paste() function.

# Output: For a slightly more complicated example, we can join two vectors, each of
# length 3. Use paste() to join the integer vector 1:3 with the character vector c("X", "Y", "Z"). This time, use sep
# = "" to leave no space between the joined elements.
paste(1:3, c("X", "Y", "Z"), sep = "")
# Hint: Use paste(1:3, c("X", "Y", "Z"), sep = "") to see what happens when we join
# two vectors of equal length using paste().

# Output: 'What do you think will happen if our vectors are of different length? (Hint:
# we talked about this in a previous lesson.)'
# Vector recycling! Try paste(LETTERS, 1:4, sep = "-"), where LETTERS is a
# predefined variable in R containing a character vector of all 26 letters in the
# English alphabet.
paste(LETTERS, 1:4, sep = "-")
# Hint: Type paste(LETTERS, 1:4, sep = "-") to see how R recycles the vector 1:4 to  match
# the length of LETTERS. Notice we are using `-` as our separator this time instead
# of a single space.

# Output: Since the character vector LETTERS is longer than the numeric vector 1:4,
# R simply recycles, or repeats, 1:4 until it matches the length of LETTERS.
# Also worth noting is that the numeric vector 1:4 gets 'coerced' into a character
# vector by the paste() function.
# We'll discuss coercion in another lesson, but all it really means that the
# numbers 1, 2, 3, and 4 in the output above are no longer numbers to R, but rather
# characters "1", "2", "3", and "4".

