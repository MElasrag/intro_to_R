# day two
# Lists and Matrices

# Lists: A list is a list of 'things' . these can have amixyure of data types

list_example <- list(1, "a", TRUE, "Hello", 12.34, -12.45)
list_example

second_list <- list(title = "Number", numbers = 1:10, data = TRUE)

second_list

# what 'type' is a list?
typeof(second_list)
typeof(second_list$title)
typeof(second_list$data)
typeof(second_list$numbers)
print(second_list$numbers)
print(second_list$numbers[3])

#Matrices
# Azero filled matrix- 6 colums and 3 rows
matrix_example <- matrix(0, ncol=6, nrow=3)
matrix_example
class(matrix_example)
typeof(matrix_example)
str(matrix_example)
dim(matrix_example)
ncol(matrix_example)
nrow(matrix_example)

#Challenge 4, 5 and 6
length(matrix_example)

#Challenge 5
x <- matrix(1:50, ncol=5, nrow=10)







