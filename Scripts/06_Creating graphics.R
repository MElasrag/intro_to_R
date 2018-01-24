#creating graphics
# Author: Mohammed Elasrag
# Date: 24 January 2018

# to use ggplot2:install:

install.packages("ggplot2")

# to start using it:
?aes
?geom_point
library("ggplot2")
gapdata <- read.csv(file = 'data/gapminder-FiveYearData.csv')
ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp)) + geom_point()

# change the colour
ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp)) + geom_point(colour = "red")

# remove the grey background
+ theme_bw()
ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp)) + geom_point(colour = "red") + theme_bw()

# chalenge 1

ggplot(data = gapdata, aes(x = year, y = lifeExp)) + geom_point(colour = "continent") + theme_bw()

#Chalenge 2
ggplot(data = gapdata, aes(x = year, y = lifeExp, color=continent)) +
  geom_point()


# layers
ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) +
  geom_line()

# line and point

ggplot(data = gapdata, aes(x=year, y=lifeExp, by=country, color=continent)) +
  geom_line() + geom_point()

ggplot(data = gapdata, aes(x=year, y=lifeExp, by=country)) +
  geom_line(aes(color=continent)) + geom_point()

ggplot(data = gapdata, aes(x=year, y=lifeExp, by=country)) + geom_point()  + geom_line(aes(color=continent))

# chaalenge 3

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) +
  geom_point() + geom_line(aes(color=continent))

# Transformations and statistics
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) +
  geom_point()


ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() + scale_x_log10() + geom_smooth(method="lm", size=1.5)

#chalenge4a

ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(size=2, color="red") + scale_x_log10() +
  geom_smooth(method="lm", size=1.5)

#chalenge4b

ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size=2, shape=17) + scale_x_log10() +
  geom_smooth(method="lm", size=1.5)




