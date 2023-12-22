my_text <- readline(prompt = "Enter the string: ")

# Combine lines into a single string
my_text <- paste(my_text, collapse = "")

# Remove leading and trailing white space
my_text <- trimws(my_text)

# Remove spaces and convert to lowercase for case-insensitive comparison
clean_text <- tolower(gsub(" ", "", my_text))

# Reverse the content
reverse_text <- rev(unlist(strsplit(clean_text, "")))

# Convert the reversed content back to a string
reverse_text <- paste(reverse_text, collapse = "")

# Check if the content is a palindrome
if (clean_text == reverse_text) {
  print("The string is a palindrome")
} else {
  print("The string is not a palindrome")
}