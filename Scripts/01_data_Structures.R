# Author: Mohammed Elasrag
# Date 10 Januray 2018
# Purpose: Script to create and analysis data frames

#enter after the lastrow to avoid error like that:Warning message:
  #In read.table(file = file, header = header, sep = sep, quote = quote,  :
                #  incomplete final line found by readTableHeader on 'data/feline_data.csv'

#read the data file from disk
cats <- read.csv(file = "data/feline_data.csv")
cats
View(cats)

# adress a particular colum with $
cats$weight 
cats$coat

# add 2 kg to each weight
cats$weight + 2

# Data type
typeof(cats$weight)
typeof(cats$coat)
class(cats)

#vectors

my_vector <- vector (length = 3)
my_vector

# vector with different mode

my_vector <- vector(mode = "character", length = 3)
my_vector

# make avector
combine_vector <- c(2,4,8)
combine_vector

combine_vector <- c(2, 4, "eight')
char_vector <- c("2", "4", "8")
num_vector <- as.numeric(char_vector)


# Challenge 1

x <- 1:26
x <- x * 2
names(x) <- LETTERS

x


#Factors and level

coats <- c('tabby', 'tortoiseshell', 'tortoiseshell', 'black', 'tabby')
coats

# structure
str(coats)


categories <- factor(coats)
class(categories)
str(categories)
typeof(categories)





