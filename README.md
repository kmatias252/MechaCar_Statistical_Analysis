# MechaCar_Statistical_Analysis

## Deliverable 1: 

The objective of deliverable 1 was to use R to design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. 

### Statistical Summary: 
![Screen Shot 2022-02-06 at 12 41 30 PM](https://user-images.githubusercontent.com/91925639/152694273-cacd4d37-9a29-49ba-a797-83582c398247.png)

## Linear Regression to Predict MPG

* Based on the p-values of the linear regression model, the variables with a non-random amount of variance to the mpg values in the dataset are vehicle length and ground clearance. This implies that vehicle length and ground clearance have a significant impact on mpg whereas vehicle weight, spoiler angle and AWD have p-values with a random amount of variance to the mpg values in the dataset and do not have a significant impact on mpg. 

* The slope of the linear model is not considered to be zero considering the p-value for this model is 5.35e-11 which is lower than our significance level of 0.05. Therefore, we can statistically reject the null hypothesis and our slope is not zero.

* This linear model predicts the mpg of MechaCar prototypes effectively because the multiple r-squared value for this model is 0.7149 and the adjusted r-squared value is 0.6825. This implies that 71% of all mpg predictions will be determined by this model and 68% will be determined after adjusting for the number of predictors in the model which is a more accurate measurement. 

## Deliverable 2: 

The objective of deliverable 2 was to use R to create a summary statistics table which shows the suspension coil’s PSI continuous variable across all manufacturing lots and the mean, median, variance and standard deviation for each lot. 

### Total Summary:
![Screen Shot 2022-02-06 at 12 42 29 PM](https://user-images.githubusercontent.com/91925639/152694618-66eedb0f-52ef-457c-8823-06e0542507d2.png)

### Lot Summary:
![Screen Shot 2022-02-06 at 12 42 57 PM](https://user-images.githubusercontent.com/91925639/152694646-8edf5ec2-1884-40db-9ffe-2c521d5a3514.png)

## Summary Statistics on Suspension Coils
Based on the design specifications for the MechaCar suspension coils which dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

* The total summary meets this design specification considering the variance of the suspension coils does not exceed 100 PSI and is in fact only 62.29356 PSI. 
* Lot 1 meets the design specification for the suspension coils because the variance is only 0.9795918 which is within the threshold.
* Lot 2 meets the design specification for the suspension coils because the variance is only 7.4693878 which is within the threshold. 
* Lot 3  does not meet the design specification for the suspension coils because the variance is 170.2861224 which exceeds the threshold.

## Deliverable 3: 

The objective of deliverable 3 was to use R to perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

## T-Tests on Suspension Coils

### Suspension Coil T-Test:
![Screen Shot 2022-02-06 at 12 48 26 PM](https://user-images.githubusercontent.com/91925639/152695629-8e341375-b740-435d-9cde-342507d27311.png)

In the following suspension coil t-test, the p-value for all of the manufacturing lots was 0.06028 which is not statistically significant based on our significance level of 0.05. This implies that we fail to reject the null hypothesis and therefore the sample mean and the population mean are not statistically different.      

### Lot 1 T-Test:
![Screen Shot 2022-02-06 at 12 48 55 PM](https://user-images.githubusercontent.com/91925639/152695676-28e52555-ec7d-4519-b33b-57c8814321a3.png)

In the following t-test for lot 1, the p-value is 1.0 which implies that the sample mean is not statistically different from the population mean. Based on this sample, we fail to reject the null hypothesis. 

### Lot 2 T-Test:
![Screen Shot 2022-02-06 at 12 49 15 PM](https://user-images.githubusercontent.com/91925639/152695705-5729d24c-6a69-4365-9fe7-619139521a5b.png)

In the following t-test for lot 2, the p-value is 0.6072 which implies that the sample mean is not statistically different from the population mean. Based on this sample, we fail to reject the null hypothesis. 

### Lot 3 T-Test:
![Screen Shot 2022-02-06 at 12 49 35 PM](https://user-images.githubusercontent.com/91925639/152695733-4f365007-2510-4afd-a25b-c57ad73ef12d.png)

In the following t-test for lot 3, the p-value is 0.04168 which implies that the sample mean is statistically different from the population mean. Based on this sample, we can reject the null hypothesis. 

## Deliverable 4: 

The objective of deliverable 4 was to use R to design a statistical study which compares performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

## Study Design: MechaCar vs Competition

A statistical study that can be developed to compare the performance of the MechaCar vehicles against the performance of the vehicles from other manufactures is a multiple linear regression model which tests the highway fuel efficiency in terms of MPG of MechaCar vs. the competitor. The null hypothesis would state that MechaCar fuel efficiency is statistically similar to that of the competition and the alternative hypothesis would state that MechaCar fuel efficiency is statistically different from the competition. Similar to our previous analysis, we would run multiple linear regressions to understand how much variance in the dependent variable (MPG) is accounted for in a linear combination of independent variables. Lastly, the data we would need to need to collect would be MPG data for both MechaCars and MPG data for vehicles considered to be the competition. 
