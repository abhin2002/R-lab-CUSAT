generate_series <- function(num_terms) {
  series <- numeric(num_terms)
  
  if (num_terms >= 1) {
    series[1] <- 0
  }
  if (num_terms >= 2) {
    series[2] <- 1
  }
  if (num_terms >= 3) {
    series[3] <- 1
  }
  
  for (i in 4:num_terms) {
    series[i] <- series[i - 1] + series[i - 2] + series[i - 3]
  }
  
  return(series)
}

num_terms <- as.integer(readline("Enter the number of terms in the series: "))

if (is.na(num_terms) || num_terms <= 0) {
  cat("Please enter a positive integer.\n")
} else {
  result <- generate_series(num_terms)
  cat("Series with", num_terms, "terms is:", result, "\n")
}
