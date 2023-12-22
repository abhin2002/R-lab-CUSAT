encrypt_letter <- function(letter, shift) {
  if (is.na(letter)) {
    return(NA)
  }

  if (letter %in% letters) {
    alphabet <- letters
  } else if (letter %in% LETTERS) {
    alphabet <- LETTERS
  } else {
    return(letter)
  }

  letter_index <- match(letter, alphabet)
  encrypted_index <- (letter_index + shift - 1) %% 26 + 1
  return(alphabet[encrypted_index])
}

encrypt_sentence <- function(sentence, shift) {
  encrypted_sentence <- sapply(unlist(strsplit(sentence, "")), encrypt_letter, shift = shift)
  return(paste(encrypted_sentence, collapse = ""))
}

input_sentence <- readline("Enter a sentence: ")

shift <- as.integer(readline("Enter the shift value: "))

if (is.na(shift)) {
  cat("Please enter a valid integer.\n")
} else {

  encrypted_sentence <- encrypt_sentence(input_sentence, shift)
  cat("Encrypted sentence:", encrypted_sentence, "\n")
}
