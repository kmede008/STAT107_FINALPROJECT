# 00_requirements.R
required_packages <- c("tidyverse", "ggplot2", "dplyr")
check_packages <- function(pkg_list) {
  for (pkg in pkg_list) {
    if (!require(pkg, character.only = TRUE, quietly = TRUE)) {
      cat("Installing package:", pkg, "\n")
      install.packages(pkg)
      library(pkg, character.only = TRUE)
      packages <- c(
        "tidyverse", "ggplot2", "dplyr", "tidyr", "readr",
        "lubridate", "here", "knitr", "rmarkdown"
      )
            check_packages <- function(pkg_list) {
        for (pkg in pkg_list) {
          if (!require(pkg, character.only = TRUE, quietly = TRUE)) {
            cat("Installing package:", pkg, "\n")
            install.packages(pkg)
            library(pkg, character.only = TRUE)
          }
        }
      }
      