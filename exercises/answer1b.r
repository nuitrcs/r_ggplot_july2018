# Run the code below to set up the data
# Make a scatterplot using the unisex_data with Male on the x axis and Female on the y
# Color the points by name
# Use geom_smooth(method="lm", se=FALSE) to add a trend line for each name

# Bonus: Look at the options for geom_smooth and try other settings


library(tidyverse)
# Load and reshape data
unisex_data <- read_csv("data/unisex.csv")
unisex_data <- unisex_data %>%
  select(-prop) %>%
  spread(sex, n, fill=0)
unisex_data

# make a scatterplot
ggplot(unisex_data, aes(x=Male, y=Female, color=name)) + 
  geom_point() +
  geom_smooth(method="lm", se=FALSE)

