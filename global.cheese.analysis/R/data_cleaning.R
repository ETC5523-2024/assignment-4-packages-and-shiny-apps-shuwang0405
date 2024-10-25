#' Clean Cheese Data
#'
#' This function cleans the raw cheese data by handling missing values, converting
#' fat content to numeric format, and standardizing the country column.
#'
#' @param data A data frame containing raw cheese data. It should have at least
#' the columns 'fat_content' and 'country'.
#' @return A cleaned data frame with numeric fat content and standardized country names.
#' @examples
#' library(readr)
#' cheese_data <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-06-04/cheeses.csv')
#' cheese_data_clean <- clean_cheese_data(cheese_data)
#' head(cheese_data_clean)
#' @export
clean_cheese_data <- function(data) {
  if (is.null(data) || nrow(data) == 0) {
    stop("Error: The input data is empty or not loaded correctly.")
  }

  required_cols <- c("fat_content", "country")
  if (!all(required_cols %in% names(data))) {
    stop(paste("Error: The data frame must contain the following columns:",
               paste(required_cols, collapse = ", ")))
  }

  data_clean <- data %>%
    filter(!is.na(fat_content)) %>%
    mutate(
      fat_content = as.numeric(str_extract(fat_content, "\\d+")),
      country = ifelse(is.na(country) | country == "", "Unknown", country)
    )

  if (any(is.na(data_clean$fat_content))) {
    warning("Warning: Some fat content values could not be converted to numeric.")
  }

  return(data_clean)
}
