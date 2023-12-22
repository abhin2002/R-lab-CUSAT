# Read the dataset
titanic_data <- read.csv("TITANIC.csv")

# Plot the histogram of Number of parents and children of the passenger aboard 
hist(titanic_data$Parch, col = "navyblue", border = "black",
     main = "Passenger's Number of Parents/Children Aboard",
     xlab = "Number of Parents/Children",
     ylab = "Count")

# Plot the boxplot with different colors
boxplot(Age ~ Survived, data = titanic_data, col = c("#FF5733", "#33FF57"),
        main = "Age Distribution of Survivors and Non-Survivors",
        xlab = "Survival Status",
        ylab = "Age")
# Impute missing values
median_age <- median(titanic_data$Age, na.rm = TRUE)
titanic_data$Age[is.na(titanic_data$Age)] <- median_age

# Plot the boxplot with different colors after imputation
boxplot(Age ~ Survived, data = titanic_data, col = c("#FF5733", "#33FF57"),
        main = "Age Distribution of Survivors and Non-Survivors (Missing Values Imputed)",
        xlab = "Survival Status",
        ylab = "Age")
