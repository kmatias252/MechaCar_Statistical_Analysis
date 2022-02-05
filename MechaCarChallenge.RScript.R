# Deliverable 1

# Import dplyr
library(dplyr)

# Import the data
MechaCar_mpg <- read.csv('/Users/katelymatias/Documents/Columbia_University/Module_15/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# Perform linear regression that predicts the mpg of MechaCar
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg)

# Summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))
