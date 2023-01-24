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
  There are coefficients that are near 0 value
- Is the slope of the linear model considered to be zero? Why or why not?
  It almost seems as if it were zero.
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  The model an be used to predict mpg values with a multiple R-squared of 0.7149, meaning 72.49% is the proportion of the variation in mpg variable that can be explained by the other variables (independent).

## Summary Statistics on Suspension Coils
PSI

<img width="509" alt="Screen Shot 2023-01-23 at 21 22 18" src="https://user-images.githubusercontent.com/114015620/214205955-8ca36fe2-31de-4c2d-be7b-c31ee4328eca.png">

Summary group by lots

<img width="627" alt="Screen Shot 2023-01-23 at 21 29 06" src="https://user-images.githubusercontent.com/114015620/214206580-e24353b4-bdea-4e25-adc2-129d332e226b.png">

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?





