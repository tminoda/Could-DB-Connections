##########
# Connection From R to BigQuery
# Created:2014/09/28

# Hadley's git hub page
# https://github.com/hadley/bigrquery
##########


# install packages
install.packages("devtools")
install.packages("httpuv")

library(devtools)
library(httpuv)

# devtools
devtools::install_github("hadley/devtools")
# bigquery
devtools::install_github("hadley/bigrquery")
library(bigrquery)

# Run query
prj <- "---"
sql <- "SELECT  * FROM [publicdata:samples.wikipedia] LIMIT 1000"
results <- query_exec(sql , project = prj)

