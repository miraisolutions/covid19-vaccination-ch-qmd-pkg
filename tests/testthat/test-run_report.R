# test_that("Running the Rmd report works", {
#   # adapted from golem::expect_running()
#   r_ <- if (tolower(.Platform$OS.type) == "windows") {
#      normalizePath(file.path(Sys.getenv("R_HOME"), "bin", "R.exe"))
#   } else {
#     normalizePath(file.path(Sys.getenv("R_HOME"), "bin", "R"))
#   }
#   run_expression <- sprintf(
#     ".libPaths(%s)[1]; covid19vaccinationch::run_report()",
#     paste(deparse(.libPaths()[1]), collapse = "\n")
#   )
#   run_process <- processx::process$new(
#     echo_cmd = TRUE,
#     command = r_,
#     c("-e", run_expression),
#     # we need stderr = "" to ensure errors are captured as breaking
#     stdout = NULL, stderr = ""
#   )
#   # run_process <- covid19vaccinationch::run_report()
#   Sys.sleep(15)
#   expect_true(run_process$is_alive())
#   run_process$kill()
# })
