library(tidyverse)

iris_data <- read.csv("Iris.csv")

cat("Overview of the Iris dataset:\n")
str(iris_data)

cat("\nFirst few rows of the Iris dataset:\n")
head(iris_data)

cat("\nSummary statistics of the Iris dataset:\n")
summary(iris_data)

iris_data$Species <- as.factor(iris_data$Species)

cat("\nPair plot of Iris dataset:\n")
pairs(iris_data[, 1:4], col = iris_data$Species, pch = 16)

anova_result <- aov(SepalLengthCm ~ Species, data = iris_data)

cat("\nANOVA Summary:\n")
summary(anova_result)

png("iris_pair_plot.png", width = 800, height = 800)
pairs(iris_data[, 1:4], col = iris_data$Species, pch = 16)
dev.off()
