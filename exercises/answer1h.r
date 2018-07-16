# Run the code below to set up the data
# Create a histogram of the number of babies with a name in 2015
# Pick an appropriate number of bins (no right answer)
# Log the x axis
# Facet the graph by sex
# Set the axis labels and title appropriately

# Note: there are a lot of names; it could take a second to plot

# Bonus: Change the facet labels to Female and Male

library(tidyverse)
library(babynames)
y2015 <- filter(babynames, year==2015)
y2015

# make a histogram
ggplot(y2015, aes(n)) + 
  geom_histogram(bins=20) + 
  scale_x_log10() + 
  facet_wrap(~sex) + # you could use other facet functions
  labs(x="Number of Babies with Name",
       y="Number of Names, 2015",
       title="Distribution of Baby Name Frequencies")
  
# Bonus: 
ggplot(y2015, aes(n)) + 
  geom_histogram(bins=20) + 
  scale_x_log10() + 
  facet_wrap(~factor(sex, levels=c("F", "M"), labels=c("Female","Male"))) + 
  labs(x="Number of Babies with Name",
       y="Number of Names, 2015",
       title="Distribution of Baby Name Frequencies")

# Alternative Bonus Answer (not shown in workshop)
ggplot(y2015, aes(n)) + 
  geom_histogram(bins=20) + 
  scale_x_log10() + 
  facet_wrap(~sex, labeller=as_labeller(c("F"="Female", "M"="Male"))) + 
  labs(x="Number of Babies with Name",
       y="Number of Names, 2015",
       title="Distribution of Baby Name Frequencies")
