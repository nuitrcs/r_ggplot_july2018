# Run the code below to set up the data
# Make a scatter plot with x=Male, y=Female


library(tidyverse)
# Load and reshape data
unisex_data <- read_csv("data/unisex.csv")
casey <- unisex_data %>% # get just the data for "Casey" needed to plot
  filter(name=="Casey") %>%
  select(-prop) %>%
  spread(sex, n, fill=0)
casey

# make the plot
ggplot(casey, aes(x=Male, y=Female)) + 
  geom_point()
