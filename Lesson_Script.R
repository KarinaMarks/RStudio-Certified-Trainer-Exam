# Sample Lesson
# Using Python in R with {reticulate}
# Karina Marks
# 18th September 2020

library(reticulate)

py_available(initialize = TRUE)


np <- import("numpy")


dplyr::filter()

np$mean(mtcars$mpg)

py_help(np$mean)

np$median(mtcars$mpg)


sb <- import("seaborn")

py_help(sb$lmplot)


sb$lmplot(data=mtcars, x="mpg", y="wt")


library(ggplot2)
p <- ggplot(data=mtcars, aes(x=mpg, y=wt)) +
  geom_point() +
  geom_smooth()

print(p)

plt <- import("matplotlib.pyplot")
plt$show()
