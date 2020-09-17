
# Formative Assessment 1 --------------------------------------------------

# **Multiple choice:** Which of the following code blocks works to correctly
# load in the Python NumPy package, and use the min function on the mpg column
# of mtcars;
#
# 
# ### 1
# library(reticulate)
# library(NumPy)
# NumPy::min(mtcars$mpg)
# 
# ### 2
# library(reticulate)
# np <- import(numpy)
# np::min(mtcars$mpg)
# 
# ### 3
# library(reticulate)
# np <- import('numpy')
# np$min(mtcars$mpg)
# 
# ### 4
# library(reticulate)
# library(NumPy)
# NumPy$min(mtcars$mpg)


# ANSWER: 3



# Formative Assessment 2 --------------------------------------------------

# **Parsons Problem:** Rearrange the following code lines to be in the correct
# order to produce a python plot
# 
# # 1
# plt <- import("matplotlib.pyplot")
# sb <- import("seaborn")
# 
# # 2
# plt$show()
# 
# # 3
# sb$lmplot(data = mtcars, x = "mpg", y = "wt")
# 
# # 4
# library(reticulate)


# ANSWER: 4 -> 1 -> 3 -> 2



# Summative Assessment ----------------------------------------------------


# 1. Import the `"numpy"` Python library, and find the mean and median 
# `Sepal.Length` values from the `iris` data set
# 
# 2. Import the `"seaborn"` and `"matplotlib.pyplot"` Python libraries,
# create and view a linear model plot (`lmplot`) displaying the `Sepal.Length` 
# against `Sepal.Width` from the `iris` data set
# 
# *Extension:*
#   
# 3. Using any methods you'd like (help files, internet, tab completion, etc.)
# find the function in `"seaborn"` that can be used to create a boxplot, and make
# one showing the distribution of the `Sepal.Length` variable for each `Species`
# 

# 1.

# load in packages R & Python
library(reticulate)
np <- import("numpy")

np$mean(iris$Sepal.Length)
np$median(iris$Sepal.Length)


# 2.

# load in packages R & Python
sb <- import("seaborn")
plt <- import("matplotlib.pyplot")

# create plot
sb$lmplot(data = iris, x = "Sepal.Length", y = "Sepal.Width")

# view plot
plt$show()


# 3.

sb$boxplot(data = iris, x = "Species", y = "Sepal.Length")
plt$show()
