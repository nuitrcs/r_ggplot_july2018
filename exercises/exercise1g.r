# Run the code below to set up the data


library(tidyverse)
# Load and reshape data
unisex_data <- read_csv("data/unisex.csv")
unisex_data <- unisex_data %>%
  select(-prop) %>%
  spread(sex, n, fill=0)
unisex_data


# Change the plot to use a facet_wrap by name

ggplot(unisex_data, aes(x=Male, y=Female)) + 
  geom_point() +
  theme_minimal() 


# Bonus: Reverse the order of the names in the facets

