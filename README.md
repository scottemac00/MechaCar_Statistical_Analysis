# MechaCar_Statistical_Analysis
Using R to perform multiple linear regression analysis to identify which variables in a dataset predict the fuel
economy (miles per gallon, mpg) of, and quality of suspension coils produced, in MechaCar prototypes.

## Linear Regression to Predict MPG
    Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    Of the 5 variables considered, Ground Clearance and Vehicle Length have a significant impact on mpg, 
    while Vehicle Weight may only have a slight impact on fuel economy.
![](/Resources/Images/mpg_summary.png)

    Is the slope of the linear model considered to be zero? Why or why not?
    Because there are two of the dependent variables with strong correlations (significant impacts), the 
    slope of the linear model is not zero.

    Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    This linear model is effective in predicting fuel economy of MechaCar prototypes because of the significant 
    correlation between two of the 5 variables, and because of the strong correlation of one of the variables.
    
## Summary Statistics on Suspension Coils
    The design specifications for the MechaCar suspension coils dictate that the variance of the suspension 
    coils must not exceed 100 pounds per square inch (PSI). Does the current manufacturing data meet this design 
    specification for all manufacturing lots in total and each lot individually? Why or why not?
    
![](/Resources/Images/total_summary.png)  ![](/Resources/Images/lot_summary.png)
    
    The current manufacturing data variance, while not exceeding 100 psi in total, and in only one lot individually,
    indicates that the variance may not be sufficient for continued production. Further analysis (and more
    data) is required to more accurately determine if the design specifications are sound.

## T-Tests on Suspension Coils
    T-Tests were used to determine if suspension coil production lots accurately reflect the broader population with 
    respect to a mean of 1500 PSI. The analysis revealed that only Lot 1 strongly reflects the larger population, as 
    noted by p-value:
![](/Resources/Images/t_test1500PSI.png)  ![](/Resources/Images/t_test_lot1.png)

    Lots 2 and 3 had diminishing reflections (as determined by p-value):
![](/Resources/Images/t_test_lot2.png)    ![](/Resources/Images/t_test_lot3.png)    
    
## Study Design: MechaCar vs Competition
    This statistical study quantifies how MechaCar performs against the competition, and seeks to answer the 
    following questions:
    
    What metric or metrics are you going to test?
        The study considers cost, fuel efficiency, horsepower, maintenance, and safety ratings.
        
    What is the null hypothesis or alternative hypothesis?
        Null Hypothesis: MechaCar fuel efficiency is NOT better than the competition
        Alternate Hpyothese: MechaCar fuel efficiency on the highway is, on average, 5% better than the competition
        
        Similar null hypotheses might be tested for each metric, where we assume MechaCar is either better than the 
        competition by a factor of _n_ or is NOT better than the competition.

    What statistical test would you use to test the hypothesis? And why?
        Linear modeling would best determine if a correlation exists between cost and maintenance, or fuel efficiency and
        horsepower. 
        T-testing might be used to compare MechaCar statistics with competition statistics in similar populations.                 
        Comparing safety ratings of models with similar traits might give engineers and managers information to refine
        designs, or improve cost efficiencies.

    What data is needed to run the statistical test?
        Data would need to specify model, year, engine horsepower, cost (manufacturer's suggested retail price), safety             
        rating (by the same governing organization), to ensure similar populations. Comparing disimilar data will not
        positively contribute to company objectives.

    

