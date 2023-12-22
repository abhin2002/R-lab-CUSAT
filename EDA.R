# load the Iris dataset using datasets library
data(iris)

# summarize the dataset
summary(iris)

# check for missing values in the iris dataset
sum(is.na(iris))

# one-way ANOVA test
anova(lm(Sepal.Length ~ Species, data = iris))

# pair plot
library(ggplot2)
ggplot(iris, aes(colour = Species)) +
  geom_point() +
  ggpairs()
