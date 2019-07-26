# Before you begin this lesson, you must initialize the environmnent.
# Manually open the file 3-initLesson_looking_at_data.R
# Run the commands line by line to bring in the appropriate Global Environment requirements.
setwd("/home/rstudio-user/R/week_1")
getwd()
# Hint: If your working directory does not contain the above file, use the setwd() to resource
# the appropriate location.
# use > ?setwd <return> to see the Help for this function.
# Open the file "3-initLesson_looking_at_data"
# Run the file, then close it.

# Output: Whenever you're working with a new dataset, the first thing you 
# should do is look at it! What is the format of the data? What are the 
# dimensions? What are the variable names? How are the variables stored? 
# Are there missing data? Are there any flaws in the data?

# Output: This lesson will teach you how to answer these questions and more 
# using R's built-in functions. We'll be using a dataset constructed from the 
# United States Department of Agriculture's PLANTS Database
# (http://plants.usda.gov/adv_search.html).

# Output: I've stored the data for you in a variable called plants. 
# Type ls() to list the variables in your workspace, among which should be plants.
ls()
# Hint: Use ls() to list the variables in your workspace.

# Output: Let's begin by checking the class of the plants variable with class(plants).
# This will give us a clue as to the overall structure of the data.
class(plants)
# Hint: Use class(plants) to check the class of the plants variable.

# Output: It's very common for data to be stored in a data frame. 
# It is the default class for data read into R using functions like 
# read.csv() and read.table(), which you'll learn about in another lesson.

# Output: Since the dataset is stored in a data frame, we know it is rectangular.
# In other words, it has two dimensions (rows and columns) and fits neatly into
# a table or spreadsheet. Use dim(plants) to see exactly how many rows and 
# columns we're dealing with.
dim(plants)
# Hint: Use dim(plants) to see the exact dimensions of the plants dataset.

# Output: The first number you see (5166) is the number of rows (observations)
# and the second number (10) is the number of columns (variables). 
# You can also use nrow(plants) to see only the number of rows. Try it out.
nrow(plants)
# Hint: Use nrow(plants) to see only the number of rows.

# Output: ... And ncol(plants) to see only the number of columns.
ncol(plants)
# Hint: Use ncol(plants) to see only the number of columns.

# Output: If you are curious as to how much space the dataset is occupying in memory,
# you can use object.size(plants).
object.size(plants)
# Hint: object.size(plants) will tell you how much memory is occupyed by the plants data frame.

# Output: Now that we have a sense of the shape and size of the dataset, 
# let's get a feel for what's inside. names(plants) will return a character 
# vector of column (i.e. variable) names. Give it a shot.
names(plants)
# Hint: names(plants) will return a character vector of column (i.e. variable) names.

# Output: We've applied fairly descriptive variable names to this dataset, 
# but that won't always be the case. A logical next step is to peek at the actual data.
# However, our dataset contains over 5000 observations (rows), so it's 
# impractical to view the whole thing all at once.
# The head() function allows you to preview the top of the dataset. 
# Give it a try with only one argument.
head(plants)
# Hint: head(plants) will show you the very top of the dataset.

# Output: Take a minute to look through and understand the output above. 
# Each row is labeled with the observation number and each column with the 
# variable name. Your screen is probably not wide enough to view all 10 
# columns side-by-side, in which case R displays as many columns as it can 
# on each line before continuing on the next.
# By default, head() shows you the first six rows of the data. 
# You can alter this behavior by passing as a second argument the number
# of rows you'd like to view. Use head() to preview the first 10 rows of plants.
head(plants, 10)
# Hint: head(plants, 10) will show you the first 10 rows of the dataset.

# Output: The same applies for using tail() to preview the end of the dataset. 
# Use tail() to view the last 15 rows.
tail(plants, 15)
# Hint: tail(plants, 15) will show you the last 15 rows of the dataset.

# Output: After previewing the top and bottom of the data, 
# you probably noticed lots of NAs, which are R's placeholders for 
# missing values. Use summary(plants) to get a better feel for how each 
# variable is distributed and how much of the dataset is missing.
summary(plants)
# Hint: Try summary(plants) to look at how each variable is distributed 
# and how many missing values we are dealing with.

# Output: summary() provides different output for each variable,
# depending on its class. For numeric data such as Precip_Min, 
# summary() displays the minimum, 1st quartile, median, mean, 
# 3rd quartile, and maximum. These values help us understand how the
# data are distributed.
# For categorical variables (called 'factor' variables in R), 
# summary() displays the number of times each value (or 'level') 
# occurs in the data. For example, each value of Scientific_Name 
# only appears once, since it is unique to a specific plant. 
# In contrast, the summary for Duration (also a factor variable) 
# tells us that our dataset contains 3031 Perennial plants, 682 Annual plants, etc.
# You can see that R truncated the summary for Active_Growth_Period by 
# including a catch-all category called 'Other'. 
# Since it is a categorical/factor variable, we can see how many 
# times each value actually occurs in the data with 
# table(plants$Active_Growth_Period).
table(plants$Active_Growth_Period)
# Hint: table(plants$Active_Growth_Period) will display counts for each 
# level of the factor variable.

# Output: Each of the functions we've introduced so far has its place 
# in helping you to better understand the structure of your data. 
# However, we've left the best for last....
# Perhaps the most useful and concise function for understanding the 
# *str*ucture of your data is str(). Give it a try now.
str(plants)
# Hint: Use str(plants) to look at the structure of your data.

# The beauty of str() is that it combines many of the features of the 
# other functions you've already seen, all in a concise and readable format. 
# At the very top, it tells us that the class of plants is 'data.frame' and 
# that it has 5166 observations and 10 variables. 
# It then gives us the name and class of each variable, 
# as well as a preview of its contents.
# str() is actually a very general function that you can use on most objects in R.
# Any time you want to understand the structure of something 
# (a dataset, function, etc.), str() is a good place to start.
# In this lesson, you learned how to get a feel for the structure and contents
# of a new dataset using a collection of simple and useful functions. 
# Taking the time to do this upfront can save you time and frustration 
# later on in your analysis.

