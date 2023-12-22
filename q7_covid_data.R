covid_data <- read.csv("time-series-19-covid-combined.csv")
covid_data$Date <- as.Date(covid_data$Date)
library(dplyr)
time_series_data <- covid_data %>%
  group_by(Date) %>%
  summarise(Confirmed = sum(Confirmed))
covid_ts <- ts(time_series_data$Confirmed, start = c(2020, 1), frequency = 365)
# Plotting the time series object
plot(covid_ts, main = "COVID-19 Confirmed Cases Over Time", xlab = "Date", ylab = "Number of Cases")
# Adding a simple trendline (using linear regression)
trend <- lm(covid_ts ~ time(covid_ts))
abline(trend, col = "blue")
