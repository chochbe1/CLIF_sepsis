# Define a vector of required packages 
packages <- c("shiny", "shinyFiles", "tidyverse", "arrow", "gtsummary", 
              "jsonlite", "gt", "here", "rmarkdown", "readr", "glue") 

# Install any packages not already installed 
installed_packages <- packages[!(packages %in% installed.packages()[, "Package"])]

if (length(installed_packages)) {
  install.packages(installed_packages, dependencies = TRUE)
}

# Load all packages
lapply(packages, library, character.only = TRUE)
