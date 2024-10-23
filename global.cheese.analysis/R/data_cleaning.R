
library(readr)
library(dplyr)
library(stringr)

cheese_data <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-06-04/cheeses.csv')


cheese_data_clean <- cheese_data %>%
  filter(!is.na(fat_content)) %>%
  mutate(fat_content = as.numeric(str_extract(fat_content, "\\d+")),
         country = ifelse(is.na(country), "Unknown", country))


library(usethis)


usethis::use_data(cheese_data_clean, overwrite = TRUE)
