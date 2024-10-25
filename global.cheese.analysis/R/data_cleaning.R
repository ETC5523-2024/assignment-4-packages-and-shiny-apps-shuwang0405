library(readr)
library(dplyr)
library(stringr)


clean_cheese_data <- function(data) {

  if (is.null(data) || nrow(data) == 0) {
    stop("Error: Data is empty or not loaded correctly.")
  }


  data_clean <- data %>%
    filter(!is.na(fat_content)) %>%
    mutate(

      fat_content = as.numeric(str_extract(fat_content, "\\d+")),

      country = ifelse(is.na(country), "Unknown", country)
    )


  if (any(is.na(data_clean$fat_content))) {
    warning("Warning: Some fat content values could not be converted to numeric.")
  }

  return(data_clean)
}


cheese_data <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-06-04/cheeses.csv')


cheese_data_clean <- clean_cheese_data(cheese_data)


head(cheese_data_clean)
