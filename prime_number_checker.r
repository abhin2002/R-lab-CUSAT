is_prime <- function(num) {
  if (num <= 1) {
    return(FALSE)
  }
  if (num == 2) {
    return(TRUE)
  }
  if (num %% 2 == 0) {
    return(FALSE)
  }
  for (i in 3:sqrt(num)) {
    if (num %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

find_primes_in_range <- function(start, end) {
  prime_numbers <- c()
  for (n in start:end) {
    if (is_prime(n)) {
      prime_numbers <- c(prime_numbers, n)
    }
  }
  return(prime_numbers)
}

num_to_check <- as.integer(readline("Enter a number: "))

if (is.na(num_to_check) || num_to_check <= 0) {
  cat("Please enter a positive integer.\n")
} else {
  if (is_prime(num_to_check)) {
    cat(num_to_check, "is a prime number.\n")
  } else {
    cat(num_to_check, "is not a prime number.\n")
  }
}

start_range <- as.integer(readline("Enter the lower limit: "))
end_range <- as.integer(readline("Enter the upper limit: "))

if (is.na(start_range) || is.na(end_range) || start_range < 2 || start_range > end_range) {
  cat("Please enter valid range.\n")
} else {
  prime_numbers_in_range <- find_primes_in_range(start_range, end_range)
  
  if (length(prime_numbers_in_range) > 0) {
    cat("Prime numbers in the range from", start_range, "to", end_range, "are:", prime_numbers_in_range, "\n")
  } else {
    cat("No prime numbers found in the range from", start_range, "to", end_range, "\n")
  }
}
