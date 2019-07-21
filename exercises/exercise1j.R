# Run the code below to set up the data
# Change the points in the plot to light gray, 
# decrease their size, and change their shape


library(tidyverse)
# Load and reshape data
unisex_data <- read_csv("data/unisex.csv")
unisex_data <- unisex_data %>%
  select(-prop) %>%
  spread(sex, n, fill=0)
unisex_data

# make a scatterplot
# Change the points in the plot to light gray, 
# decrease their size, and change their shape
ggplot(unisex_data, aes(x=Male, y=Female, color=name)) + 
  geom_point() +
  geom_smooth(method="lm", se=FALSE) + 
  theme_minimal()


# Bonus: 
# In the plot below, change the border of the points to be 
# red and the inside to be blue.
# Hint: which is color and which is fill?
# More Bonus: increase the width of the border
ggplot(filter(unisex_data, name=="Casey"), aes(x=Male, y=Female)) + 
  geom_point(shape=24, size=3) 
