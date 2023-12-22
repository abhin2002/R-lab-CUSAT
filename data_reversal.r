reverse_list <- function(input_list) {
  if (length(input_list) == 0) {
    return(input_list)
  }
  return(c(reverse_list(input_list[-1]), input_list[1]))
}

input_list <- as.numeric(strsplit(readline("Enter a list of numbers separated by spaces: "), " ")[[1]])

if (length(input_list) == 0) {
  cat("Please enter a non-empty list of numbers.\n")
} else {
  reversed_list <- reverse_list(input_list)
  cat("Reversed list:", reversed_list, "\n")
}
