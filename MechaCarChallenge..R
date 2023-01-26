library(dplyr)
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
?lm()
#Linear regression
mpg.lm <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD,
                  data = MechaCar_table)
summary(mpg.lm)
#Stat summary
SuspensionCoil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- SuspensionCoil_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),standardeviation=sd(PSI))
lot_summary <- SuspensionCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_lot=mean(PSI),Median_lot=median(PSI),Variance=var(PSI), std_lot=sd(PSI), .groups = 'keep') #create summary table with multiple columns

# t.test determine if the PSI across all manufacturing is different from 1500
?t.test()
t.test(SuspensionCoil_table$PSI, mu=1500) 

#t.test using subset

lot1 <- subset(SuspensionCoil_table, Manufacturing_Lot == "Lot1")
lot2 <- subset(SuspensionCoil_table, Manufacturing_Lot == "Lot2")
lot3 <- subset(SuspensionCoil_table, Manufacturing_Lot == "Lot3")

# each subste
t.test(lot1$PSI, mu=1500) 
t.test(lot2$PSI, mu=1500) 
t.test(lot3$PSI, mu=1500) 



