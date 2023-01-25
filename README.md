# MechaCar_Statistical_Analysis-

### Linear Regression to Predict MPG
Code to call the linear regression

mpg.lm <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD,
                  data = MechaCar_table)
summary(mpg.lm)

In the picture bellow the output is shown:

<img width="770" alt="Screen Shot 2023-01-23 at 20 59 02" src="https://user-images.githubusercontent.com/114015620/214203553-2b1f7109-b5da-4c98-8c2f-212e1fa98aef.png">

The coefficients allows the linear regression to be as follows:
mpg = 6.267e+00vehicle_length + 1.245e-03vehicle_weight + 6.877e-02spoiler_angle + 3.546e+00ground_clearance - 3.411e+00AWD -1.040e+02 
This function c

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  Variance**
- Is the slope of the linear model considered to be zero? Why or why not?
  The slope of the model is not zero, since the coefficients provide the change of mpg values with respect to the dependent variables. If the slope were zero, we would expect a constant mpg value.
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The model an be used to predict mpg values with a multiple R-squared of 0.7149, meaning 72.49% is the proportion of the variation in mpg variable that can be explained. There most be more variables contributting to the change in mpg, further analysis may be performed to improve R-squared value. Some alternatives could be to explore more variables or to try to find another distribution that better fits data. 

## Summary Statistics on Suspension Coils
PSI

<img width="509" alt="Screen Shot 2023-01-23 at 21 22 18" src="https://user-images.githubusercontent.com/114015620/214205955-8ca36fe2-31de-4c2d-be7b-c31ee4328eca.png">

Summary group by lots

<img width="627" alt="Screen Shot 2023-01-23 at 21 29 06" src="https://user-images.githubusercontent.com/114015620/214206580-e24353b4-bdea-4e25-adc2-129d332e226b.png">

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils

1.  In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

A t-test was performed to determine if the PSI across all manufacturing lots is statistically different. 
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

The p-value = 1. It is greater than 0.05, therefore, the Ho is rejcted.  

Lot 2

Ho: PSI mean in Lot2 is equal to 1,500 psi.
Ha: PSI different in Lot2 is equal to 1,500 psi.

<img width="547" alt="Screen Shot 2023-01-23 at 21 59 38" src="https://user-images.githubusercontent.com/114015620/214209614-68c65adb-5013-4de4-a54f-94b53ea100fa.png">
The p-value = 0.6072, since it is greater than 0.05 Ho is rejected. 

Lot 3

Ho: PSI mean in Lot3 is equal to 1,500 psi.
Ha: PSI different in Lot3 is equal to 1,500 psi.

<img width="550" alt="Screen Shot 2023-01-23 at 22 00 04" src="https://user-images.githubusercontent.com/114015620/214209653-996caedb-d2fc-4f4d-b37e-64dc9a1c753f.png">

The p-value = 0.6072. Since it is greater than 0.05 Ho is rejected. 

After the three t-tests it concluded that each Lot means are different to 1,500 psi. 

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating

In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

<img width="688" alt="Screen Shot 2023-01-23 at 22 08 16" src="https://user-images.githubusercontent.com/114015620/214210384-da10c80b-734a-452d-902e-0be3aa3d24dc.png">


<img width="616" alt="Screen Shot 2023-01-23 at 22 08 32" src="https://user-images.githubusercontent.com/114015620/214210406-f96650e9-f946-4351-b8b9-b05627036afa.png">


