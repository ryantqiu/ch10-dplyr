### Exercise 2: Data Frame Practice with dplyr

## This exercise need the "fueleconomy" package.  Install and load it.
## You should have have access to the `vehicles` data.frame
library(fueleconomy)
## Install (if you haven't already) and load the `dplyr`package
library(dplyr)
# You should have have access to the `vehicles` data.frame


# Create a data.frame of vehicles from 1997
vehicles <- data.frame(vehicles)
vehicles <- filter(vehicles, year == 1997)

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unique <- unique(vehicles)

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
two_wheel_more_than_20_mpg <- filter(unique, drive != "4-Wheel Drive", drive != "4-Wheel or All-Wheel Drive", cty > 20)

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
worst_hwy_mpg <- filter(two_wheel_more_than_20_mpg, hwy == min(hwy))

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
best_mpg_per_year <- function(in_year, in_make) {
  in_year_and_make <- filter(vehicles, year == in_year, make == in_make) %>% filter(hwy == max(hwy))
  return (in_year_and_make)
}

# What was the most efficient honda model of 1995?
best_in_1997 <- best_mpg_per_year(1997, "Honda")

