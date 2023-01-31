# Load the dplyr package
library(dplyr)
# Import and read the csv into a dataframe
mpg<- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)
# Perform linear regression
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mpg)
# Use the summary function to determine p-value & r-squared
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mpg))
