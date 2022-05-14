require("readxl")
require("tidyverse")
mydata2 <- read_excel("/Users/yunfan/Desktop/birthweight_smoking.xlsx")

reg_1 <- lm(mydata2$birthweight ~ mydata2$smoker)
summary (reg_1)
coefficients(reg_1)

reg_2 <- lm(mydata2$birthweight ~ mydata2$smoker + mydata$alcohol + mydata2$nprevist)
print(reg_2)
summary(reg_2)

partc1 = lm(mydata2$smoker ~ mydata2$alcohol + mydata2$nprevist)
partc2 = lm(mydata2$birthweight ~ mydata2$alcohol + mydata2$nprevist)
partc3 = lm(partc2$residuals ~ partc1$residuals)
print(partc3)
