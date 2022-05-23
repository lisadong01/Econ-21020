require("readxl")
require("tidyverse")
mydata3 <- read_excel("/Users/yunfan/Desktop/cps04-1.xlsx")

library(lmtest)
library(sandwich)
library(AER)
library (readxl)

wage_ols <- lm(mydata3$AHE ~ mydata3$Female + mydata3$College + mydata3$HS)
summary (wage_ols)

confint(wage_ols, level = 0.95)

c2 <- 0
r2 <- c(0, 0, 1, 0)
sqrt(linearHypothesis(model2, r2, c2, vcov = vcovHC(model2, type = "HC1"), test = "Chisq")$Chisq[2])

mydata3$totaledu <- mydata3$College + mydata3$HS

wage_ols2 <- lm(mydata3$AHE ~ mydata3$Female + mydata3$College + mydata3$totaledu)
summary (wage_ols2)

t_test2 <- (7.95985 - 5.297760)/ sqrt(0.08082^2 + 0.14491^2)
summary(t_test2)

fem_college <- mydata3$Female * mydata3$College
fem_hs <- mydata3$Female * mydata3$HS

wage_ols3 <- lm(mydata3$AHE)

really don't know how to code 4c

