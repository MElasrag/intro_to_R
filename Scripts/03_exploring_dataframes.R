#Exploring Data Frames


#load in the data

cats <- read.csv(file = 'data/feline_data.csv')


# add a col to an existing dataframe
age <- c(2, 3, 5)
cats

#bind the cats datafrme to the new age vector
cbind(cats, age)
cats

# what if the new colum was longer the df?

age <- c(2, 3, 5, 9)
cbind(cats, age)

# correct one
age <- c(2, 3, 5)
cats <- cbind(cats, age)

# Add anew row

newRow <- list("tortoiseshell", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)

# Factors
levels(cats$coat)

# add another factor
levels(cats$coat) <- c(levels(cats$coat), 'tortoiseshell')

# Add the new row again
cats <- rbind(cats, list("tortoiseshell", 3.3, TRUE, 9))
# or by this (do the samething
cats <- rbind(cats, newRow)

# remove the row
cats
cats[-4,]

#Alternatively, we can drop all rows with NA values:

na.omit(cats)

# overwrite the old cats DF with the new values

cats <- na.omit(cats)

# fix the rowname indexing
cats
rownames(cats) <- NULL
cats

# Chalenge 2
df <- data.frame(first = c('Mohammed'),
                 last = c('Elasrag'),
                 lucky_number = c(12),
                 stringsAsFactors = FALSE)

df <- rbind(df, list('Alice', 'Webb', 10) )
df <- cbind(df, coffeetime = c(TRUE,TRUE))

# Gapminder exercise

gapminder <- read.csv(file = 'data/gapminder-FiveYearData.csv')


tail(gapminder)  # 6 rows by defaults
tail(gapminder, n = 20)

#A sample

gapminder[sample(nrow(gabminder), 5), ]



#Challenge 4
source(file= "Scripts/load_gabminder.R")


str(gapminder)
