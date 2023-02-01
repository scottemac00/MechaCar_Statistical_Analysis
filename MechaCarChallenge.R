# Part 1
# Load the dplyr package
library(dplyr)
# Import and read the csv into a dataframe
mpg<- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)
# Perform linear regression
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mpg)
# Use the summary function to determine p-value & r-squared
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mpg))

# Part 2
# Create a summary statistics table to show:
# suspension coil PSI continuous variable across all lots
# PSI mean, median, variance, and std dev
# Import and read the csv into a dataframe
coil <- read.csv('Suspension_Coil.csv')
head(coil)
# Create summary dataframe
total_summary <- coil %>% summarize(Mean=mean(PSI), Median=median(PSI),
                                    Variance=var(PSI), SD=sd(PSI), .groups='keep')
# Create a lot_summary dataframe using group_by and summarize()
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),
              Median=median(PSI),
              Variance=var(PSI),
              SD=sd(PSI),
              .groups='keep')
