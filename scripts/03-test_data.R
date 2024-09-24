#### Preamble ####
# Purpose: Tests the dataset for obvious errors
# Author: Veyasan Ragulan
# Date: 20 September 2024
# Contact: veyasan.ragulan@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$DBH_TRUNK |> min() <= 0

# Test for NAs
all(is.na(data$WARD))
all(is.na(data$BOTANICAL_NAME))

