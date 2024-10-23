#' Analyze Fat Content by Country
#'
#' This function calculates the average fat content of cheese by country.
#' @param cheese_data A cleaned data frame containing cheese information.
#' @return A data frame with average fat content by country.
#' @export
analyze_fat_by_country <- function(cheese_data) {
  cheese_data %>%
    group_by(country) %>%
    summarise(avg_fat_content = mean(fat_content, na.rm = TRUE)) %>%
    arrange(desc(avg_fat_content))
}
