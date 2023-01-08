# HEADER --------------------------------------------
#
# Author: Roberto Chiosa
# Copyright © Roberto Chiosa, 2021
# Email:  roberto.chiosa@polito.it
#
# Date: 2021-10-27
#
# Script Name: ~/Desktop/dashboard-abb/report/knit_browser.R
#
# Script Description:
# This script defines a custom html document function used to knit html report
# using a custom template. The custom template is inspired from the ABB website
# and is contained in the folder "template-basic"

# LOAD PACKAGES and FUNCTIONS ------------------------------------


cat("\014")                 # Clears the console
rm(list = ls())             # Remove all variables of the work space


# 
# param_list <- list(
#   PlantName = "ABB SACE BUILDING",
#   GroupName = "Plant",
#   from = "2021-03-29",
#   to = "2021-07-16", # to =  "2022-02-16",
#   timezone_plant = "Europe/Rome",
#   cluster_k = 4
# )
# 
# # load group id to decide name-id of group
# df_plant_groups <- read.csv(file.path("data", "ABB SACE BUILDING", "df_plant_groups.csv"))
# 
# param_list <- append(param_list,
#   list(GroupId = df_plant_groups$GroupId[df_plant_groups$GroupName == param_list$GroupName]))
# 
# ######


out_path <- rmarkdown::render(
  input = file.path("main.Rmd"),
  output_file = file.path("output", "report.html"),
  #params = param_list
)


browseURL(out_path)
