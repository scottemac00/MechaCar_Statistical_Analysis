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

# Part 3
# perform t-tests to determine if all manufacturing lots and each lot 
# individually are statistically different from the population mean of 
# 1,500 pounds per square inch.
t.test((coil$PSI), mu=1500) # fail to reject null hypothesis (true mean is 1500 psi)
# Use t.test() and subset() to determine statistical
# difference of PSI per lot based on 1500 PSI mean
lot1<-coil %>% filter(Manufacturing_Lot == 'Lot1')
lot2<-coil %>% filter(Manufacturing_Lot == 'Lot2')
lot3<-coil %>% filter(Manufacturing_Lot == 'Lot3')
# t.test each subset (lot1-3)
t.test(lot1$PSI,mu=1500) # fail to reject null hypothesis (true mean is 1500psi)
t.test(lot2$PSI, mu=1500) # fail to reject null hypothesis (true mean is 1500psi)
t.test(lot3$PSI, mu=1500) # reject null hypothesis (true mean is NOT 1500psi)
