# packages installed by anaconda's r-essential install
install.packages(c(
  "ggplot2",
  "plyr",
  "reshape2",
  "dplyr",
  "tidyr",
  "caret",
  "data",
  "quantmod",
  "shiny",
  "rmarkdown",
  "glmnet",
  "jsonlite",
  "zoo",
  "irkernel",
  "rbokeh",
  "formatr",
  "tebook",
  "tidyverse",
  "dbi",
  "broom",
  "forcats",
  "haven",
  "hms",
  "httr",
  "lubridate",
  "magrittr",
  "modelr",
  "purrr",
  "readr",
  "readxl",
  "rvest",
  "stringr",
  "tibble",
  "xml2"
  )
)

# additional packages
install.packages(c(
  "tinytex",
  "bit",
  "bit64",
  "blob",
  "openssl",
  "keyring",
  "odbc",
  "devtools"
  )
)


renv::snapshot()
