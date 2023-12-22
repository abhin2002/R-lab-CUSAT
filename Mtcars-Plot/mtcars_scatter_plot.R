plot(mtcars$disp, mtcars$wt, 
     col = mtcars$carb,  
     pch = mtcars$carb,  
     main = "Scatter Plot of Displacement vs. Weight by Carburetors",
     xlab = "Displacement",
     ylab = "Weight")


legend("topright", legend = levels(factor(mtcars$carb)), title = "Carburetors", col = 1:6, pch = 1:6, cex = 0.8)

abline(lm(wt ~ disp, data = mtcars), col = "black")
