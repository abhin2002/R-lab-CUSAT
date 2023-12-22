mtcars_data <- read.csv("mtcars.csv")
table_data <- table(mtcars_data$cyl, mtcars_data$am)
transmission_colors <- c("lightblue", "lightgreen")

barplot(table_data, beside = TRUE, col = transmission_colors,
        main = "Number of Cylinders by Transmission Type",
        xlab = "Number of Cylinders",
        ylab = "Count")

legend("topright", legend = c(0, 1), fill = transmission_colors, title = "Transmission Type")
