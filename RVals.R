setwd("~/Documents/GitHub/MySQL")
employee <- read.csv("IBM_employee_data.csv")
#######################################################################################
### % salary hike (y, response) vs. performance rating (x, explanatory): r=0.78
## Linear Model calculations:
y_avg <- mean(employee$PercentSalaryHike)
x_avg <- mean(employee$PerformanceRating)
y_sum <- sum(employee$PercentSalaryHike)
x_sum <- sum(employee$PerformanceRating)
yy <- (employee$PercentSalaryHike) - (y_avg)
xx <- (employee$PerformanceRating) - (x_avg)
yyxxsum <- sum(yy*xx)
xxsq <- (xx)^2
sumxxsq <- sum(xxsq)
beta <- yyxxsum/sumxxsq ## beta = 7.8558
alpha <- y_avg - (beta*x_avg) ## alpha = -9.4979


## check work
mod <- lm(employee$PercentSalaryHike ~ employee$PerformanceRating)
mod ## coefficients match ones from calculation

##prediction equation: yhat= -9.4979 + 7.8558x

## r value:
cor(employee$PercentSalaryHike, employee$PerformanceRating)

## scatterplot
plot(employee$PerformanceRating, employee$PercentSalaryHike,
     xlab="Performance Rating",
     ylab="Percent Salary Hike")
abline(a=-9.4979, b=7.8558, col="red")
##########################################################################################
### age (x, explanatory) vs. monthly income (y, response): r=0.50
## Linear Model calculations:
y_avg2 <- mean(employee$MonthlyIncome)
x_avg2 <- mean(employee$Age)
y_sum2 <- sum(employee$MonthlyIncome)
x_sum2 <- sum(employee$Age)
yy2 <- (employee$MonthlyIncome) - (y_avg2)
xx2 <- (employee$Age) - (x_avg2)
yyxxsum2 <- sum(yy2*xx2)
xxsq2 <- (xx2)^2
sumxxsq2 <- sum(xxsq2)
beta2 <- yyxxsum2/sumxxsq2 ## beta = 257.861
alpha2 <- y_avg2 - (beta2*x_avg2) ## alpha = -3246.812

## Check it 
mod2 <- lm(employee$MonthlyIncome ~ employee$Age)
mod2 #coefficients match those from calculation

## prediction equation: yhat = -3246.812 + 257.861x

## r=0.50
cor(employee$Age, employee$MonthlyIncome)

## scatterplot
plot(employee$Age, employee$MonthlyIncome,
     xlab="Age",
     ylab="Monthly Income")
abline(a=-3246.812, b=257.861, col="red")


