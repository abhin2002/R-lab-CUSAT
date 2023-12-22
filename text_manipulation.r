cat("Enter a paragraph of text: ")
paragraph <- readline()
cat("Enter a specific word to replace: ")
specific_word <- readline()
cat("Enter the replacement word: ")
replacement_word <- readline()

word_count <- length(strsplit(paragraph, "\\s+")[[1]])
cat("Total number of words:", word_count, "\n")
words <- unlist(strsplit(paragraph, "\\s+"))
avg_word_length <- mean(nchar(words))
cat("Average word length:", avg_word_length, "\n")
longest_word <- words[which.max(nchar(words))]

cat("Longest word:", longest_word, "\n")
modified_paragraph <- gsub(specific_word, replacement_word, paragraph)
cat("Modified paragraph:", modified_paragraph, "\n")
