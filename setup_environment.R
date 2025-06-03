#' Setup Project Environment
#' 
#' This script sets up the R environment for the ESA GAM Models project.
#' Run this script after cloning the repository to install all required packages.

# CRAN mirror for all installs
cran_mirror <- "https://cran.r-project.org"

# List of required packages
required_pkgs <- c(
  "lme4", "isoband", "mgcv", "readxl", "ggplot2", "dplyr", "gratia", "MASS",
  "DHARMa", "utf8", "mgcViz", "caret", "gap", "nlme", "MuMIn", "Metrics",
  "lubridate", "qgam", "lattice", "renv", "tidyr"
)

# Install missing packages
for (pkg in required_pkgs) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg, repos = cran_mirror)
  }
}

# Create renv lockfile if it doesn't exist
if (!file.exists("renv.lock")) {
  if (!requireNamespace("renv", quietly = TRUE)) {
    install.packages("renv", repos = cran_mirror)
  }
  renv::init()
  renv::snapshot()
}

message("Project environment setup complete!")
