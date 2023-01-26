# MechaCar_Statistical_Analysis-

## Purpose

The new prototype MechCar has some production troubles. Therefore, a statistical analysis is required for delivering some insights to the manufacturing team. The analysis includes:

- Multiple linear regression to predict mpg of prototypes. 
- PSI descriptive statistic summary. 
- T-test for PSI to verify mean PSI value across population.
- A Statistical Design to compare performance against other competitors.

## Linear Regression to Predict MPG

Code to call the linear regression

mpg.lm <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD,
                  data = MechaCar_table)
summary(mpg.lm)

In the picture bellow the output is shown:

<img width="770" alt="Screen Shot 2023-01-23 at 20 59 02" src="https://user-images.githubusercontent.com/114015620/214203553-2b1f7109-b5da-4c98-8c2f-212e1fa98aef.png">

The coefficients allows the linear regression to be as follows:
mpg = 6.267e+00vehicle_length + 1.245e-03vehicle_weight + 6.877e-02spoiler_angle + 3.546e+00ground_clearance - 3.411e+00AWD -1.040e+02 

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  
Thanks to the p-value<0.05 criteria, it can be concluded that the variables that are statistical significant (non-random variance) to the model are  vehicle_lenght and ground_clearance. As it is, the model presents a 72.49% of explained variation for the mpg variable. It would be a good idea to repeat the linear regression without including vehicle_weight, spoiler_angle and AWD. Actually, a Design of Experiments could be performed to determine whether all variables are significant or the interaction between them to find a better fitted model. 
  
- Is the slope of the linear model considered to be zero? Why or why not?
  
  The slope of the model is not zero, since the coefficients provide the change of mpg values with respect to the dependent variables. If the slope were zero, we would expect a constant mpg value.
  
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The model has been used to predict mpg values with a multiple R-squared of 0.7149, it has a strong correlation. In other words, 72.49% of the variation in mpg variable can be explained by the indpendent variables used in the linear regression model. Although reduce error in predictions, there most be more variables contributting to the change in mpg. Further analysis may be performed to improve R-squared value. Some alternatives could be to explore more variables, analize interaction between current variables or try to find another distribution that better fits the data. 

## Summary Statistics on Suspension Coils

### Total summary

<img width="509" alt="Screen Shot 2023-01-23 at 21 22 18" src="https://user-images.githubusercontent.com/114015620/214205955-8ca36fe2-31de-4c2d-be7b-c31ee4328eca.png">

In the table descriptive statistics is presented, with a mean of 1498.78 psi overall, in some cases more in some less 7.89 psi.

### Summary group by lots

<img width="627" alt="Screen Shot 2023-01-23 at 21 29 06" src="https://user-images.githubusercontent.com/114015620/214206580-e24353b4-bdea-4e25-adc2-129d332e226b.png">

In the table above, each lot is presented with its mean around the value 1,500 psi. Let's test if we can conclude that value is statistically equal in all lots. 

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

For Lot 1 and 2, the variance has a small value (0.97 and 7.46 respectively) compared to 100 pounds. However, the variance on Lot 3 is 170.28 representing a huge risk for the suspension coils quality. To be sure, a Chi-square test must be performed to support with enough statistical information that:

H0:	σ2=100

Ha:	σ2≠100	   	for a two-tailed test


## T-Tests on Suspension Coils

A t-test was performed to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.. 

Ho: PSI mean is equal to 1,500 psi.

Ha: PSI mean is different to 1,500 psi.

<img width="517" alt="Screen Shot 2023-01-23 at 21 48 10" src="https://user-images.githubusercontent.com/114015620/214208462-71951a0a-9350-47f5-a058-13bee0db179c.png">

Since p-value = 0.06028, therefore it can be said that there's enough statistical information to reject Ho. This means, it can be concluded that the psi mean for all lots is different from 1,500.

2.  Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
After this, a t-test was performed for each lot.

Lot 1

Ho: PSI mean in Lot1 is equal to 1,500 psi.

Ha: PSI different in Lot1 is equal to 1,500 psi.

<img width="553" alt="Screen Shot 2023-01-23 at 21 59 07" src="https://user-images.githubusercontent.com/114015620/214209536-ef1987d4-93a1-46cf-bec8-4b77f92c7ffc.png">

The p-value = 1. It is greater than 0.05, therefore, the Ho is not rejcted.  

Lot 2

Ho: PSI mean in Lot2 is equal to 1,500 psi.

Ha: PSI different in Lot2 is equal to 1,500 psi.

<img width="547" alt="Screen Shot 2023-01-23 at 21 59 38" src="https://user-images.githubusercontent.com/114015620/214209614-68c65adb-5013-4de4-a54f-94b53ea100fa.png">
The p-value = 0.6072, since it is greater than 0.05 Ho is not rejected. 

Lot 3

Ho: PSI mean in Lot3 is equal to 1,500 psi.

Ha: PSI different in Lot3 is equal to 1,500 psi.

<img width="586" alt="Screen Shot 2023-01-25 at 18 28 29" src="https://user-images.githubusercontent.com/114015620/214725803-f779a3f0-550c-4cbe-9b6a-f926b5e35960.png">


The p-value = 0.04168. Since it is smaller than 0.05 Ho is rejected. 

After the three t-tests it concluded that Lot 1 and 2 means are not different to 1,500 psi. However, Lot 3 is different with a significance level of 0.05%. This means that this variation could be a cause of the manufacturing problems. 

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

A statistical test can be performed to analize fuel efficiency in highway, mantainance cost and safety rating.

1.  What metric or metrics are you going to test?

Efficiency = kilometers per liter or miles per gallon

Mantainace Cost = $$ per time horizon (5-years)

Recoils = Number of recoils over defined period.


2.  What is the null hypothesis or alternative hypothesis?

### Efficiency

Ho:Average Efficiency MechaCar > Average Efficiency Competitor

Ha: Average Efficiency MechaCar < Average Efficiency Competitor

### Mantainance Cost

Ho: Mantainance Cost MechaCar < Mantainance Cost Competitor

Ha: Mantainance Cost MechaCar < Mantainance Cost Competitor

### Recoils

Ho: Variance in number of recoils MechaCar < Variance in number of recoils  Competitor

Ha: Variance in number of recoils MechaCar > Variance in number of recoils  Competitor 

3.  What statistical test would you use to test the hypothesis? And why?

For Fuel Efficiency, Mantainance Cost t-test since MachaCar means values are compared between the two groups. Whereas, in Recoils a Chi-square since it would be needed the variance of recoils in MachaCar and its competitor. 

4.  What data is needed to run the statistical test?

A data set of at least 30 observations for fuel efficiency, mantainance cost and number of recoils. 

