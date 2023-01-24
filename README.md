# MechaCar_Statistical_Analysis-

### Linear Regression
Code to xall the linear regression

mpg.lm <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD,
                  data = MechaCar_table)
summary(mpg.lm)

Output
<img width="770" alt="Screen Shot 2023-01-23 at 20 59 02" src="https://user-images.githubusercontent.com/114015620/214203553-2b1f7109-b5da-4c98-8c2f-212e1fa98aef.png">

The coefficients allows the linear regression to be as follows:
mpg = 6.267e+00vehicle_length + 1.245e-03vehicle_weight + 6.877e-02spoiler_angle + 3.546e+00ground_clearance - 3.411e+00AWD -1.040e+02 
This function can be used to predict mpg values with a multiple R-squared of 0.7149, meaning 72.49% is the proportion of the variation in mpg variable that can be explained by the other variables (independent).
