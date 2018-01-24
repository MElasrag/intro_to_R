# subsetting data

x <- c(5.4, 6.2, 7.0, 4.1, 8.3)
x
names(x) <- c('a', 'b', 'c', 'd', 'e')
x
x[1]
x[3]
x[c(1, 3)]
x[1:4]  # slices

# Skipping and removing elements

x[-2]
x[c(-1, -3)]  # or x[-c(1,3)]

#Using names
x["a"]
x[c("b", "d")]

# Challenge 1
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)

x[2:4]
x[c("b", "c", "d")]
x[-c(1,5)]




