#### Preamble ####
# Purpose: Downloads and saves the data from OpenData Toronto
# Author: Veyasan Ragulan
# Date: 20 September 2024
# Contact: veyasan.ragulan@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]



#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
