# SMART Course intro to the R Programming Language

# 1. Assignment

# Create a variable e.g. a, and assign to it a number e.g. 1


# Call the variable that you created


# Create another variable e.g. b, and assign to a text string e.g. Male



# 2. Concatenation

# Create a variable e.g. number, which contains multiple numbers e.g 1 2 3 4


# Creata a variable e.g. sex, which contains multiple text strings e.g. male, female





# Exercise 1. 

# Create a variable that contains the names: John, Paul, George, Ringo


# Create a variable that consisting of  the numbers: 200, 515, 180, 160


# Divide every value of your numeric variable by 2, updating your original variable with the new values.


# Exericse 2.


# Create a data frame (e) that contains both of these elements in a table.



# Call the first column of your data frame


# Call the first row of your data frame


# Call the first column of the first row of your data frame


# Rename your data frame columns as 'Beatle' and 'Net_Worth'


# Halve the values in the Net Worth column, call  new data frame with the updated values.
#[Hint don't forget to assign your calculations back into the original data frame]


# Exercise 3.

# Create a variable x using the seq( ) function which contains the values 0 - 50 in intervals of 5.                      [Hint: type ?seq]


# Creata a variable y using the seq( ) function which contains the values 0 - 200 in steps of 20


# Use the plot( ) function to plot x and y, label the x axis as "Time"


# Create a new variable, y2, which contains the values 0 - 100 in intervals of 10.
# [Hint use seq( ) ]


# Use the points( ) function to add y2 by x to your plot, using the argument 'col = red' to colour these extra points.
# [Hint: you may need to re-call the plot function to add points to it]


# Exercise 4

#[ see the seperate R file : `qicharts2_problems.R` ]

# Exercise 5

# Set the location of your data files using the function `setwd ( )`


# Import the two .CSV files in this directory, one to a variable called `vent.data`,
# the other to a variable called `demographics`. Use the `header = TRUE` argument.


# View the summaries of each data frame


# What are the column names of each data frame? [Hint use the `colnames ( )` function ]


# Using the `colnames ( )` function, reassign the first column of `vent.data` so that it matches the
# first `demographics` column.


# create a new, merged data frame (called all.vent.data), using the  `merge ( )` function, and the
# the argument `by = ` to join the two data frames on the appropriate column.


# Change the sex columin the joined data frame into a categorical one using the `factor ()` function 


# Create a box plot (using the `boxplot ()` function) of the Plateau Pressure and differentiate the groups by Sex. 


# Use the 'col' argument to colour the box and whisker plot, 
# add a title using the 'main = ' argument and add y-axis labels using the 'ylab = ' argument.
