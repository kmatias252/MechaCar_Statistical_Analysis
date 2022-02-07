# Deliverable 1

# Import dplyr
library(dplyr)

# Import the data
MechaCar_mpg <- read.csv('/Users/katelymatias/Documents/Columbia_University/Module_15/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# Perform linear regression that predicts the mpg of MechaCar
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg)

# Summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

# Deliverable 2

# Import the data
Suspension_Coils <- read.csv('/Users/katelymatias/Documents/Columbia_University/Module_15/MechaCar_Statistical_Analysis/Suspension_Coil.csv', check.names = F)

# Total summary
total_summary<- Suspension_Coils %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI),Var_PSI=var(PSI),SD_PSI=sd(PSI),.groups = 'keep')

# Lot summary
lot_summary<- Suspension_Coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI),Var_PSI=var(PSI),SD_PSI=sd(PSI),.groups = 'keep')

# Deliverable 3

# Function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(Suspension_Coils$PSI,mu=1500)

# Functions to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
Lot1 = subset(Suspension_Coils, Manufacturing_Lot == 'Lot1')
Lot2 = subset(Suspension_Coils, Manufacturing_Lot == 'Lot2')
Lot3 = subset(Suspension_Coils, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI,mu=1500) 
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)
