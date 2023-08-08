# deploy/deploy-shinyapps.R
# usethis::use_build_ignore("deploy")
rsconnect::setAccountInfo(
  Sys.getenv("SHINYAPPS_ACCOUNT"),
  Sys.getenv("SHINYAPPS_TOKEN"),
  Sys.getenv("SHINYAPPS_SECRET")
)

file.copy("inst/report/index.qmd", "index.qmd", overwrite = TRUE)
quarto::quarto_publish_app(
  input = "index.qmd",
  server = "shinyapps.io",
  name = "covid19-vaccination-ch-qmd",
  title = "Covid19 Vaccination CH",
  account = "miraisolutions",
  render = "local"
)
