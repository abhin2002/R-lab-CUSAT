# Read the iris dataset from a CSV file
getwd()
iris_data <- read.csv("iris.csv")
# View the first few rows of the data
head(iris_data)

# Create a scatterplot of SepalLengthCm and PetalLengthCm with labels and a title
plot(iris_data$SepalLengthCm, iris_data$PetalLengthCm, 
     xlab = "Sepal Length (cm)", ylab = "Petal Length (cm)",
     main = "Scatterplot of Sepal Length vs Petal Length")

# Add different colors for each species
points(iris_data$SepalLengthCm[iris_data$Species == "Iris-setosa"], iris_data$PetalLengthCm[iris_data$Species == "Iris-setosa"], col = "red", pch = 1)
points(iris_data$SepalLengthCm[iris_data$Species == "Iris-versicolor"], iris_data$PetalLengthCm[iris_data$Species == "Iris-versicolor"], col = "blue", pch = 2)
points(iris_data$SepalLengthCm[iris_data$Species == "Iris-virginica"], iris_data$PetalLengthCm[iris_data$Species == "Iris-virginica"], col = "green", pch = 3)
 