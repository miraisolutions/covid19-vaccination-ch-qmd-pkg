#' Path of the Rmd file containing the article
#'
#' @noRd
report_path <- function() {
  system.file("report", package = "covid19vaccinationch")
}
#' Path of the Rmd file containing the article
#'
#' @noRd
report_path_prj <- function() {
  "inst/report"
}
#' Data path
#'
#' @export
data_path <- function() {
  system.file("bag_data", package = "covid19vaccinationch")
  #"inst/bag_data"
}

#' Data path inside the package
#'
#' @export
data_path_pkg <- function() {
  system.file("bag_data", package = "covid19vaccinationch")
}

#' Run the qmd report
#'
#' @param test for testing purposes use report_path_prj
#' @importFrom quarto quarto_run
#' @export
run_report <- function(test = FALSE) {
  if (test)
    quarto::quarto_run(file.path(report_path_prj(), "index.qmd"))
  else
    quarto::quarto_run(file.path(report_path(), "index.qmd"))
  invisible()
}

