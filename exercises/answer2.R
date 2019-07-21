# Exercise 2

# Setup code

library(tidyverse)

# there is population data built into the tidyr package
population

# and population limited to just Egypt and Finland:
population_fe <- filter(population, country %in% c("Finland", "Egypt"))
population_fe

# here's the same data in two different shapes:

# columns for each year, rows for each country
population_year <- population %>%
  spread(year, population, sep="")
population_year

# and subset to just Finland and Egypt
population_year_fe <- filter(population_year,
                             country %in% c("Finland", "Egypt"))
population_year_fe

# columns for each country, rows for each year
population_country <- population %>%
  spread(country, population)
population_country

# and subset to just Finland and Egypt
population_country_fe <- select(population_country, year, Finland, Egypt)
population_country_fe

# **********************

# Part 1
# Choose the right data set from those created above:
# - population
# - population_fe
# - population_year
# - population_year_fe
# - population_country
# - population_country_fe
# to plot the population of all countries in 1995 vs. 2003
# See: images/fe2.png
# Replace the ___ below with the correct values

ggplot(population_year, aes(year1995, year2013)) + 
  geom_point() + 
  geom_abline(aes(slope=1, intercept=0)) + # adds the diagonal line to show equal pop.
  scale_x_log10("1995") + # cleans up the label
  scale_y_log10("2013")   # cleans up the label

# Part 2
# Choose the right data set from those created above:
# - population
# - population_fe
# - population_year
# - population_year_fe
# - population_country
# - population_country_fe
# to make a line plot of population in the two countries over time
# See: images/fe1.png

ggplot(population_fe, aes(year, population, color=country)) + 
  geom_line()



