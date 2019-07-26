# Output:  How to output from R (no RStudio) to the file system.
getwd()
pdf("./data_cars.pdf")
plot(cars)
dev.off()

pdf("./data_mtcars")
boxplot(formula = mpg ~ cyl, data = mtcars)
dev.off()

# Output: Install ggplot2
install.packages("ggplot2")

# Output: Remove ggplot2
remove.packages("ggplot2")

# Output: Create your own function in R
function.name <- function (arguements) 
  {
  computations on the code
  some other code
  }

# Using data(package = .packages(all.available = TRUE))
data(package = .packages(all.available = TRUE))

# Command library loads the package MASS (for Modern Applied Statistics with S)
# into memory. Command data() will list all the datasets in loaded packages. 
# The command data(phones) will load the data set phones into memory.
library(MASS)
data()
