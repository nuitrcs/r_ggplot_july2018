# Run the code below to set up the data
# Add theme_minimal() to the plot.
# Increase the font size of the title.

# Bonus: What else can you change?

library(tidyverse)
# Load and reshape data
unisex_data <- read_csv("data/unisex.csv")
unisex_data <- unisex_data %>%
  select(-prop) %>%
  spread(sex, n, fill=0)
unisex_data

# Add theme_minimal() to the plot.
# Increase the font size of the title.
# See what other theme elements you can change
# Look up the help for theme to see the options
ggplot(unisex_data, aes(x=Male, y=Female, color=name)) + 
  geom_point() +
  geom_smooth(method="lm", se=FALSE) + 
  labs(title="Unisex Name Popularity",
       x="# of Male Babies per Year",
       y="# of Female Babies per Year",
       color="Name") 

