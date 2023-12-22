library(ggplot2)
library(dplyr)

house_prices_data <- read.csv("train.csv")
input <- house_prices_data[,c('LotArea','SalePrice')]

lm_model <- lm(SalePrice ~ LotArea, data = house_prices_data)

coefficients <- coef(lm_model)
intercept <- coefficients[1]
slope <- coefficients[2]

eqn <- sprintf("Price = %.2f + %.2f * Size", coefficients[1], coefficients[2])

ggplot(house_prices_data, aes(x = LotArea, y = SalePrice)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE, color = "blue") +
  labs(title = "Price vs Size", x = "Size (sq ft)", y = "Price") +
  theme_dark() +
  geom_text(x = max(house_prices_data$LotArea), y = max(house_prices_data$SalePrice), 
            label = eqn, hjust = 1, vjust = 1, size = 4, color = "black")
