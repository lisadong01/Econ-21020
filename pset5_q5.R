require("readxl")
require("tidyverse")
mydata4 <- read_excel("/Users/yunfan/Desktop/Fertility-1.xlsx")

library(lmtest)
library(sandwich)
library(AER)
library (readxl)

reg1 <- lm(mydata4$weeksm1 ~ mydata4$morekids)
summary (reg1)

reg2 <- lm(mydata4$morekids ~ mydata4$samesex)
summary (reg2)

cor(mydata4$morekids, mydata4$samesex)

fertilityreg2 <- glm(mydata4$morekids ~ mydata4$samesex, family="binomial")
fertility.res = resid(fertilityreg2)
cor(fertility.res, mydata4$samesex)

iv1 <- ivreg(weeksworked ~ 1 + morekids| samesex, data= mydata4)
summary (iv1)

??ivreg

iv2 <- ivreg(weeksworked ~ 1 + morekids + agem1 +black +hispan + othrace | samesex + agem1 + black + hispan + othrace)
summary (iv2)



  

