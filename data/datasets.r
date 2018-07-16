library(babynames)
library(tidyverse)

since1950 <- babynames %>%
  filter(year >= 1950) %>%
  mutate(sex=recode(sex, "F"="Female", "M"="Male")) 

topnames<-since1950 %>% 
  group_by(name) %>% 
  summarize(total=sum(n)) %>%
  arrange(desc(total)) %>%
  slice(1:1000) 

unisex_names_since1950 <- since1950 %>%
  inner_join(topnames) %>%
  group_by(name, sex, total) %>%
  summarize(sextotal=sum(n, na.rm=TRUE)) %>%
  spread(key=sex, value=sextotal) %>%
  mutate(ratio=(Male-Female)/total) %>%
  filter(abs(ratio) < .2)

unisex_data <- since1950 %>%
  filter(name %in% unisex_names_since1950$name) 

write_csv(unisex_data, "data/unisex.csv")
