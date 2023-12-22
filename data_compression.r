run_length_encoding <- function(input_string) {
  encoded_string <- ""
  i <- 1
  
  while (i <= nchar(input_string)) {
    char <- substr(input_string, i, i)
    count <- 1
    
    while (i + 1 <= nchar(input_string) && substr(input_string, i + 1, i + 1) == char) {
      count <- count + 1
      i <- i + 1
    }
    
    encoded_string <- paste0(encoded_string, char, count)
    i <- i + 1
  }
  
  return(encoded_string)
}

input_string <- readline("Enter the string to be compressed: ")

if (nchar(input_string) == 0) {
  cat("Please enter a non-empty string.\n")
} else {
  compressed_string <- run_length_encoding(input_string)
  cat("Compressed string:", compressed_string, "\n")
}
