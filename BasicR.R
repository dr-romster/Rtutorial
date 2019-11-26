library(dplyr)
library(ggplot2)
library(ggpubr)

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


# volcano plot

library(ggplot2)
library(ggpubr)
data(diff_express)

class(diff_express)
dim(diff_express)
head(diff_express)
summary(diff_express)
str(diff_express)

ggplot(data = diff_express, 
       aes(x = log2FoldChange, 
           y = (-1*(log10(padj))))) +
  geom_point()

diff_express$significant_FC <- ifelse(abs(diff_express$log2FoldChange) >= 1.5, 1L, 0L )
diff_express$q_value <- (-1* log10(diff_express$padj))
diff_express$significant_q <- ifelse(diff_express$q_value >= 1.301, 1, 0 )

library(dplyr)
diff_express <- mutate(diff_express, significant_FC = ifelse(abs(log2FoldChange) >= 1.5, 1L, 0L ))
diff_express <- mutate(diff_express, q_value = (-1* log10(padj)) )
diff_express <- mutate(diff_express, significant_q = ifelse(q_value >= 1.301, 1, 0 ))

significant_hits <- filter(diff_express, (significant_q ==1) & (significant_FC == 1))

head(significant_hits )
dim(significant_hits)

arrange(significant_hits, desc(q_value))
top50 <- arrange(significant_hits, desc(q_value)) %>% 
  filter(name != "") %>% 
  slice(1:50)


ggplot(data = diff_express, 
       aes(x = log2FoldChange, y = q_value) ) +
  geom_point() +
  geom_point(data = top50, aes(x = log2FoldChange,y = q_value), colour = 'red2') + 
  geom_text(data = top50, aes(x = log2FoldChange,y = q_value, label = name), colour = 'blue2') 

# make it prettier uisng a built in theme and 
# add lines to the genes of interest

install.packages("ggrepel")
library(ggrepel)

ggplot(data = diff_express, 
       aes(x = log2FoldChange, y = q_value) ) +
  geom_point(size = 0.4, alpha= 0.4) +
  geom_point(data = top50, 
             aes(x = log2FoldChange,y = q_value), 
             colour = 'red2') + 
  geom_text_repel(data = top50, 
            aes(x = log2FoldChange,y = q_value, label = name), 
            colour = 'blue2') +
  labs(x = 'Log2 Fold Change', y = "Q value", 
       title = "Differential Gene Expression Volcano Plot") + 
  theme_light()

##
##
##




## package setup
# only run the lines below if really needed
install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggpubr")


library(dplyr)
library(ggplot2)
library(ggpubr)


