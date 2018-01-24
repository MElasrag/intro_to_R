# Loops and IF statements in R
# Mohammed Elasrag
# 24 January 2108

# if statements are used to take different routes
# througt a program depending on values of variables

x <- 8
if(x >= 10){
  print("x is greater than 10")
}else{
  print("x is less than 10")
}

#To check for multiple conditions, use else if clauses

x <- 8

if (x >= 10) {
  print("x is greater than or equal to 10")
} else if (x > 5) {
  print("x is greater than 5, but less than 10")
} else {
  print("x is less than 5")
}

x <- 4  # x sould be small no capital
if (x >= 10) {
  print("x is greater than or equal to 10")
} else if (x > 5) {
  print("x is greater than 5, but less than 10")
} else {
  print("x is less than or equal to 5")
}

#Chalenge 1
gapdata <- read.csv(file = "data/gapminder-FiveYearData.csv")
gapdata[(gapdata$year == 2002),]

#Count the number of rows of the data in the year colum where year is 2002 
gapdata[(gapdata$year == 2002),]
nrow(gapdata[(gapdata$year == 2002),])
rows2002count <- nrow(gapdata[(gapdata$year == 2002),])

if (nrow(gapdata[(gapdata$year == 2002),]) >= 1){
  print ("There are records for 2002")
}else{
  print("Records for 2002 are not found")
}



# Loops
# The basic structure of a for() loop is
 for (i in 1:10){
   print(i)
 }

# Nested loops- loops inside loops
for(i in 1:5){
  for(j in c('a', 'b', 'c', 'd', 'e')){
    print(paste(i,j))
  }
}



# WHILE Loops repeat until some condion met

z <- 0

while(z > 0.1){
  z <- runif(1)
  print(z)
}

z <- 1

while(z > 0.1){
  z <- runif(1)
  print(z)
}


?runif

#Challenge 2

vec1 <- c('a', 'b', 'c')
vec2 <- c('c', 'b', 'a')

vec1 <- c('a', 'b', 'c')
vec2 <- c('a', 'b', 'c')
vec3 <- c('d', 'c','b', 'a')


#Are they the same? (same means same elements in the same order)
all(vec1 == vec2)


# see whether one vector is contained within another
all(vec1 %in% vec2)
all(vec1 %in% vec3)
all(vec3 %in% vec1)

#Chalenge 3
# loop thru gapminder by conteint, print out whether life exp is > or > 50 years


# Get the data
gapdata <- read.csv(file = "data/gapminder-FiveYearData.csv")
unique(gapdata$continent)

#How?
#1Loop over continent name
#2 For each value of continent, create a temporary variable that hold life exepectancy for that subset
#3 Return the calculated life expectancy to the user by printing the output:
#\ mean go tothe next line with cat

for( contname in unique(gapdata$continent) ){
  tmplifeexp <- mean(subset(gapdata, continent == contname)$lifeExp)
  cat("Average Life Expectancy for", contname, "is", tmplifeexp, "\n")
  rm(tmplifeexp)
}









