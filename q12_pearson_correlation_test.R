install.packages("readr")  
install.packages("dplyr")  
library(readr)
library(dplyr)
mtcars <- read_csv("mtcars.csv")
head(mtcars)

cor_result <- cor(mtcars$hp, mtcars$mpg, method = "pearson")
print(paste("Pearson correlation coefficient:", cor_result))

plot(mtcars$hp, mtcars$mpg, main = "Scatter Plot of hp vs. mpg", 
     xlab = "Horsepower (hp)", ylab = "Miles per Gallon (mpg)")
