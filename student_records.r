validate_student_age <- function(age) {
  if (!is.numeric(age) || age < 0 || !is.integer(age)) {
    cat("Invalid age. Please enter a positive integer for age.\n")
    return(FALSE)
  }
  return(TRUE)
}

validate_student_grade <- function(grade) {
  valid_grades <- c("A", "B", "C", "D", "F")
  if (!is.character(grade) || !grade %in% valid_grades) {
    cat("Invalid grade. Please try again.\n")
    return(FALSE)
  }
  return(TRUE)
}

read_student_records <- function(num_students) {
  student_data <- list()
  
  for (i in 1:num_students) {
    cat("\nEnter details for Student", i, ":\n")
    
    student_name <- readline("Enter student name: ")
    
    student_age_input <- as.integer(readline("Enter student age: "))
    
    if (!validate_student_age(student_age_input)) {
      i <- i - 1
      next
    }
    
    student_grade <- readline("Enter student grade: ")
    
    if (!validate_student_grade(student_grade)) {
      i <- i - 1
      next
    }
    
    student_record <- list(name = student_name, age = student_age_input, grade = student_grade)
    student_data[[i]] <- student_record
  }
  return(student_data)
}

num_students <- as.integer(readline("Enter the number of students: "))

if (is.na(num_students) || num_students <= 0) {
  cat("Invalid input.\n")
} else {
  cat("\nEnter student records for", num_students, "students:\n")
  student_records <- read_student_records(num_students)
  
  cat("\nStudent Records:\n")
  for (i in 1:num_students) {
    student_record <- student_records[[i]]
    cat("Student", i, ":\n")
    cat("Name:", student_record$name, "\n")
    cat("Age:", student_record$age, "\n")
    cat("Grade:", student_record$grade, "\n\n")
  }
}
