#' Analyze Fat Content by Country
#'
#' This function calculates the average fat content of cheese by country.
#' It groups the cheese data by country and calculates the mean fat content.
#'
#' @param cheese_data A cleaned data frame containing cheese information.
#' It must contain at least 'country' and 'fat_content' columns.
#' @return A data frame with average fat content by country, sorted in descending order.
#' @examples
#' analyze_fat_by_country(cheese_data_clean)
#' @export
analyze_fat_by_country <- function(cheese_data) {

  if (missing(cheese_data) || !is.data.frame(cheese_data)) {
    stop("Error: 'cheese_data' must be a valid data frame.")
  }


  required_columns <- c("country", "fat_content")
  if (!all(required_columns %in% names(cheese_data))) {
    stop(paste("Error: Data frame must contain the following columns:", paste(required_columns, collapse = ", ")))
  }


  result <- cheese_data %>%
    group_by(country) %>%
    summarise(avg_fat_content = mean(fat_content, na.rm = TRUE)) %>%
    arrange(desc(avg_fat_content))


  if (nrow(result) == 0) {
    warning("Warning: No data available after filtering. Check the input data.")
  }

  return(result)
}
