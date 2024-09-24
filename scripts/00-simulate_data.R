#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: ruiying li [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: ruiying.li [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Simulate data ####

#### Simulate data ####
library(tidyverse)
library(tibble)


#### Simulate data ####
set.seed(304)

# Define the start and end date
 start_date <- as.Date("2018-01-01")
 end_date <- as.Date("2023-12-31")

 
 number_of_dates <- 100

 data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 15)
  )


#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")

