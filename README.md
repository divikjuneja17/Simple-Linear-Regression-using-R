# Simple-Linear-Regression-using-R

<b> Simple linear regression </b> is a regression model that estimates the relationship between one independent variable and one dependent variable using a straight line. Both variables should be quantitative.

``` r
Reading .csv files
> income.data <- read.csv("~/income.data.csv")

> view(income.data)

Creation of linear regression model
> income.happiness.lm<-lm(happiness ~ income, data=income.data)

Printing statistical summary of model
> summary(income.happiness.lm)

Call:
lm(formula = happiness ~ income, data = income.data)

Residuals:
     Min       1Q   Median       3Q      Max 
-2.02479 -0.48526  0.04078  0.45898  2.37805 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.20427    0.08884   2.299   0.0219 *  
income       0.71383    0.01854  38.505   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.7181 on 496 degrees of freedom
Multiple R-squared:  0.7493,	Adjusted R-squared:  0.7488 
F-statistic:  1483 on 1 and 496 DF,  p-value: < 2.2e-16

Creating a new dataframe containing new income (independent) values
> new.income<-data.frame(income=c(2.6,1.9,2.4))

> new.income
  income
1    2.6
2    1.9
3    2.4

Predicting happiness (dependent) values based upon new income values
> predict(income.happiness.lm, newdata = new.income)
       1        2        3 
2.060217 1.560539 1.917452 
 ```
