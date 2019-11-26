library(dplyr)
library(ggplot2)

# Exercise 1

# Create a variable ‘a’ consisting of text strings:
# John, Paul, George, Ringo



# Create a vector ‘b’ consisting of the numbers:
# 200, 515, 180	, 160



# Divide every component of b by 2, and assign the results as b
 

# Add your name to `a`, and add a number to `b`


# Exercise 2

# Use the data.frame() command to create a data frame (df) with 
# a column of numbers (a) and a column of letters (b)


# Call the 1st row of the data frame


# Call the 2nd column of the data frame


# Call the 3rd value in the 1st column of the data frame


# Change the value at this location to something random



# Exercise 3 - basic plotting

x <- seq(0, 50, 5)
y <- seq(0, 200, 20)
y2 <- seq(0 ,100, 10)


# Data wrangling and plotting


library(gapminder)

head(gapminder)
summary(gapminder)







library(ggrepel)

countries_of_interest <- 
  gapminder %>% 
  filter(year %in% c(1952, 2007)) %>% 
  filter(country %in% c("United Kingdom", "United States", "China", "Afghanistan"))

gapminder %>% 
  filter(year %in% c(1952, 2007)) %>% 
  ggplot(aes(x = gdpPercap, y = lifeExp, colour = country, size = pop)) + 
  geom_point(alpha = 0.7) +
  scale_colour_manual(values = country_colors) +
  scale_size(range = c(2, 12)) +
  scale_x_log10() +
  labs(x = 'GDP per capita ($)', y = "Life Expectancy (years)") + 
  geom_text_repel(data= countries_of_interest, aes(label = country), colour = 'black', size = 5, nudge_x = 1.5) +
  facet_wrap(~year) +
  theme_light() + 
    theme(legend.position = 'none') 

##
##
##


##
##
##



