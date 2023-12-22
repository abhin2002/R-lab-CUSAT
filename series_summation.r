final_sum <- function(num_terms) {
  sum <- 0
  is_positive_term <- TRUE
  
  for (i in 1:num_terms) {
    term <- ifelse(is_positive_term, i / (2 * i - 1), -i / (2 * i - 1))
    sum <- sum + term
    is_positive_term <- !is_positive_term
  }
  
  return(sum)
}

num_terms <- as.integer(readline("Enter the number of terms in the series: "))

if (is.na(num_terms) || num_terms <= 0) {
  cat("Please enter a positive integer.\n")
} else {
  result <- final_sum(num_terms)
  cat("The sum of the series with", num_terms, "terms is:", result, "\n")
}
