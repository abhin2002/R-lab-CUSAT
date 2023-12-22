mtcars_data <- read.csv("mtcars.csv")
boxplot(hp ~ gear, data = mtcars_data, outline = TRUE, col = "darkgreen",
        main = "Horsepower by Number of Gears",
        xlab = "Number of Gears", ylab = "Horsepower")

legend("topright", legend = unique(mtcars_data$gear), pch = 1:length(unique(mtcars_data$gear)), col = "black", title = "Number of Gears")
identify(mtcars_data$gear, mtcars_data$hp, labels = row.names(mtcars_data), n = 1)
