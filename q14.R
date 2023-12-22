library(readr)
library(dplyr)
library(lubridate)
library(ggplot2)
library(forecast)

data <- read_csv("time-series-19-covid-combined.csv")

data_india <- data %>% 
  filter(Country.Region == "India") %>% 
  select(Date, Confirmed, Deaths)

data_india$Date <- as.Date(data_india$Date)

data_india_weekly <- data_india %>% 
  group_by(week = floor_date(Date, "week")) %>% 
  summarise(Confirmed = sum(Confirmed), Deaths = sum(Deaths))

ts_cases <- ts(data_india_weekly$Confirmed, start = c(2020, 4), frequency = 52)

ggplot(data_india_weekly, aes(x = week, y = Confirmed)) +
  geom_line(color = "blue") +
  labs(x = "Week", y = "Total Positive Cases", title = "COVID-19 Cases in India")

ts_cases_deaths <- ts(data_india_weekly[, c("Confirmed", "Deaths")], start = c(2020, 4), frequency = 52)

ggplot(data_india_weekly, aes(x = week)) +
  geom_line(aes(y = Confirmed, color = "Cases")) +
  geom_line(aes(y = Deaths, color = "Deaths")) +
  labs(x = "Week", y = "Total Cases/Deaths", title = "COVID-19 Cases and Deaths in India")

model <- auto.arima(ts_cases)

forecast <- forecast(model, h = 5)

plot(forecast)
