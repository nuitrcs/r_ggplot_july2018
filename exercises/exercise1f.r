# Run the code below to set up the data
# Change the points in the plot to light gray, decrease their size
# Change the color scale for the trend lines with scale_color_viridis_d()

# Bonus: What's the difference between scale_color_viridis_d() and scale_color_viridis_c()?
# Can you define your own colors (you'll need 9 for the names): look at the help for scale manual - especailly the examples

library(tidyverse)
# Load and reshape data
unisex_data <- read_csv("data/unisex.csv")
unisex_data <- unisex_data %>%
  select(-prop) %>%
  spread(sex, n, fill=0)
unisex_data

# make a scatterplot: add theme elements
ggplot(unisex_data, aes(x=Male, y=Female, color=name)) + 
  geom_point() +
  geom_smooth(method="lm", se=FALSE) + 
  labs(title="Unisex Name Popularity",
       x="# of Male Babies per Year",
       y="# of Female Babies per Year",
       color="Name") + 
  theme_minimal() + 
  theme(plot.title=element_text(size=24))


# Bonus: your own scale

