setwd("~/Documents/GitHub/MySQL")
employee <- read.csv("IBM_employee_data.csv")

### % salary hike vs. performance rating: r=0.78
cor(employee$PercentSalaryHike, employee$PerformanceRating)
plot(employee$MonthlyIncome,employee$PercentSalaryHike)

### age vs. monthly income: r=0.50
cor(employee$Age, employee$MonthlyIncome)
plot(employee$Age, employee$MonthlyIncome)

