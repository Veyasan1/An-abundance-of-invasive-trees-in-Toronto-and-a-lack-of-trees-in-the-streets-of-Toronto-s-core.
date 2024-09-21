#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Veyasan Ragulan
# Date: 20 September 2024
# Contact: veyasan.ragulan@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  select(objectid,structid,address,streetname,ward,botanical_name,dbh_trunk) |>
  tidyr::drop_na()

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
