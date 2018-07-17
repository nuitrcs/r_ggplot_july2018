# Run the code below to set up the data
# Make a scatter plot for casey data with x=Male, y=Female
# Color by year
# Then color by factor(decade): color=factor(decade)
# What's the difference?

# Bonus: Try setting other aesthetics besides color


library(tidyverse)
# Load and reshape data
unisex_data <- read_csv("data/unisex.csv")
casey <- unisex_data %>%
  select(-prop) %>%
  filter(name=="Casey") %>%
  spread(sex, n, fill=0) %>%
  mutate(decade=year-year%%10)
casey

# make the scatterplots
 
