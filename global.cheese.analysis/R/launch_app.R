#' Launch the Shiny App
#'
#' This function launches the Shiny app for global cheese analysis.
#' It searches for the app directory within the package and runs the app.
#'
#' @return Launches the Shiny app or returns an error if the directory is not found.
#' @examples
#' launch_cheese_app()
#' @export
launch_cheese_app <- function() {

  appDir <- system.file("shiny", package = "global.cheese.analysis")


  if (appDir == "" || !dir.exists(appDir)) {
    stop("Error: Could not find the Shiny app directory. Please check if the 'global.cheese.analysis' package is correctly installed.",
         call. = FALSE)
  }


  shiny::runApp(appDir, display.mode = "normal")
}
