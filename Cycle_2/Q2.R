# Load the necessary packages
install.packages("ggplot2")
install.packages("dplyr")

library(ggplot2)
library(dplyr)

# Read the mtcars dataset from a CSV file (replace 'mtcar.csv' with your actual file name)
mtcars <- read.csv("mtcar.csv")

# Create a bar plot
plot <- ggplot(mtcars, aes(x = factor(cyl), fill = factor(am)))+
  geom_bar(position = "dodge") +
  labs(title = "Cylinders by Transmission Type",
       x = "Cylinders",
       y = "Count") +
  scale_fill_manual(values = c("0" = "red", "1" = "blue")) +
  theme_minimal() +
  theme(legend.title = element_blank())

# Show the plot
print(plot)
