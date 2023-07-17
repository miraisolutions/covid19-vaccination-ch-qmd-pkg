# deploy/deploy-shinyapps.R
# usethis::use_build_ignore("deploy")
rsconnect::setAccountInfo(
  Sys.getenv("SHINYAPPS_ACCOUNT"),
  Sys.getenv("SHINYAPPS_TOKEN"),
  Sys.getenv("SHINYAPPS_SECRET")
)


quarto::quarto_publish_app(
  input = "inst/report/index.qmd",
  server = "shinyapps.io",
  name = "covid-19-vaccination-ch-qmd-pkg",
  # title = "Covid19 Vaccination CH",
  account = "miraisolutions",
  render = "server"
)
