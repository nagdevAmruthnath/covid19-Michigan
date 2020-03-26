# covid19-Michigan
This repo contains data and script for predicting COVID 19 cases for MI across all counties. The prediction model uses Exponential regression. The summary and metrics of the model are as follows

```
Call:
lm(formula = log(Cases) ~ Day + I(Day^2), data = data[samples, 
    ])

Residuals:
    Min      1Q  Median      3Q     Max 
-0.7728 -0.2923  0.1044  0.2867  0.5842 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)   
(Intercept)  0.20877    0.55608   0.375  0.71603   
Day          0.65067    0.14525   4.480  0.00153 **
I(Day^2)    -0.01105    0.00798  -1.384  0.19960   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.4653 on 9 degrees of freedom
Multiple R-squared:  0.9602,	Adjusted R-squared:  0.9513 
F-statistic: 108.5 on 2 and 9 DF,  p-value: 5.027e-07
```

### Data Source
[1] https://www.clickondetroit.com/news/local/2020/03/20/michigan-covid-19-data-tracking-case-count-cases-by-county-deaths-cases-by-age-tests/

[2] https://www.michigan.gov/coronavirus/
