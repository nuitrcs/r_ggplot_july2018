# Run the code below to set up the data
# Add labels to the plot
# - Title: Unisex Name Popularity
# - x: # of Male Babies per Year
# - y: # of Female Babies per Year
# - legend (color): Name

# Bonus: add additional information in a subtitle or caption

library(tidyverse)
# Load and reshape data
unisex_data <- read_csv("data/unisex.csv")
unisex_data <- unisex_data %>%
  select(-prop) %>%
  spread(sex, n, fill=0)
unisex_data

# make a scatterplot: add labels
ggplot(unisex_data, aes(x=Male, y=Female, color=name)) + 
  geom_point() +
  geom_smooth(method="lm", se=FALSE) 

