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
Suspension_Coils <- read.csv('/Users/katelymatias/Documents/Columbia_University/Module_15/MechaCar_Statistical_Analysis/Suspension_Coil.csv', check.names = F)

total_summary<- Suspension_Coils %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI),Var_PSI=var(PSI),SD_PSI=sd(PSI),.groups = 'keep')

lot_summary<- Suspension_Coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI),Var_PSI=var(PSI),SD_PSI=sd(PSI),.groups = 'keep')
