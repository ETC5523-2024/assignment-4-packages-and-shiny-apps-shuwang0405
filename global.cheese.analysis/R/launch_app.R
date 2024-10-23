#' Launch the Shiny App
#'
#' This function launches the Shiny app for global cheese analysis.
#' @export
launch_cheese_app <- function() {
  appDir <- system.file("shiny", package = "global.cheese.analysis")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `global.cheese.analysis`.", call. = FALSE)
  }
  shiny::runApp(appDir, display.mode = "normal")
}
