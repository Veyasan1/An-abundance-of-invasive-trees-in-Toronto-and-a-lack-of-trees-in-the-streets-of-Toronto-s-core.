#### Preamble ####
# Purpose: Replicated graphs from paper.qmd
# Author: Veyasan Ragulan
# Date: 20 September 2024
# Contact: veyasan.ragulan@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Load data ####
analysis_data <- read_csv(here::here("data/analysis_data/analysis_data.csv"))

### Replicate figures ###

# Figure 1: Street tree count of 10 most popoulus tree species in Toronto up to September 2024
top_species_count <- analysis_data %>%
  count(botanical_name, sort = TRUE) %>%
  head(10)

top_species_count |> 
  ggplot(aes(y = botanical_name, x = n)) +
  geom_col() +
  theme_minimal() +
  labs(x = "Planted Trees",
       y = NULL)

# Figure 2: Street tree count by Toronto wards up to September 2024
ward_count <- analysis_data %>%
  count(ward, sort = TRUE) %>%
  head(10)

ward_count |> 
  ggplot(aes(x = ward, y = n)) +
  geom_col() +
  theme_minimal() +
  labs(x = "Ward",
       y = "Number of trees planted")

# Figure 3: Distribution of Distance-at-Breast-Height diameter of all trees in Toronto up to September 2024
analysis_data |> 
  ggplot(mapping = aes(x = dbh_trunk)) +
  geom_histogram() +
  theme_minimal() +
  labs(x = "DBH Diameter",
       y = "Tree Count")


