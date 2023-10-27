# Load the ggplot2 library
library(ggplot2)

# Create the scatterplot
scatterplot <- ggplot(mtcars, aes(x = disp, y = mpg, color = factor(cyl))) +
  geom_point() +           # Scatterplot points
  geom_smooth(method = "lm") +  # Add a linear regression line
  labs(
    x = "Displacement (cu. in.)",  # X-axis label
    y = "Miles per Gallon (mpg)",  # Y-axis label
    title = "Scatterplot of mpg vs. disp by Cylinders",  # Title
    color = "Cylinders"  # Legend title
  ) +
  theme_minimal() +         # Aesthetics of the plot
  scale_color_discrete(name = "Cylinders")  # Legend title (color)

# Display the plot
print(scatterplot)
