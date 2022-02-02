## import data tables generated in MySQL
setwd("~/Documents/GitHub/MySQL")
gender_income <- read.csv("Gender_vs_Income.csv")
jrole_jrating <- read.csv("JobRole_vs_JobRatings.csv")
jrole_income <- read.csv("JobRole_vs_Income.csv")
## install/load ggplot2
install.packages("ggplot2")
library("ggplot2")
install.packages("tidyr")
library("tidyr")

## jobrole vs. income
ggplot(jrole_income, aes(y=avg_monthly_income, x=JobRole, fill=role_count)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Income by Job Role") +
  xlab("Job Role") +
  ylab("Average Monthly Income (USD)") +
  scale_fill_continuous("# Employees")

## gender vs. income 
ggplot(gender_income, aes(fill=Gender, y=avg_monthly_income, x=JobRole)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Gender Breakdown of Income by Job Role") +
  xlab("Job Role") +
  ylab("Average Monthly Income (USD)")

## job role vs. job rating
ratingslong <- gather(jrole_jrating, key="measure", value="value", c("avg_job_satis", "avg_job_involve", "avg_work_life"))
labels <- list(
  "avg_work_life" = "Work Life Balance",
  "avg_job_satis" = "Job Satisfaction",
  "avg_job_involve" = "Job Involvement" )
v_labeller <- function(variable, value){return(labels[value])}


ggplot(ratingslong, aes(y=value, x=JobRole)) +
  geom_bar(position="dodge", stat="identity", fill="skyblue3") +
  facet_wrap(~measure, ncol=1, labeller=v_labeller) +
  xlab("Job Role") +
  ylab(" Average Employee Rating") +
  ggtitle("IBM Employee Job Ratings") +
  geom_text(aes(label=value),vjust=1.5, size=3, color="white" )










