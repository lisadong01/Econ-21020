require("readxl")
require("tidyverse")
mydata <- read_excel("/Users/yunfan/Desktop/caschool.xlsx")

mean (mydata$avginc)
sd (mydata$avginc)

mydata$income = mydata$avginc * 1000

mean(mydata$income)
sd (mydata$income)

mean(mydata$math_scr)

(sum(mydata$str <= 20))/420
(mean(mydata$math_scr[mydata$str <= 20]))

(sum(mydata$str > 20))/420
(mean(mydata$math_scr[mydata$str > 20]))

((sum(mydata$str <= 20))/420*mean(mydata$math_scr[mydata$str <=20])) + ((sum(mydata$str > 20))/420*mean(mydata$math_scr[mydata$str >20]))

For question (6cv) this not right but I did explain on my pset what I did and got some number 
(sd(mydata$str))
(sd((mydata$math_scr)))

(cov(mydata$avginc, mydata$math_scr))
(cov(mydata$income, mydata$math_scr))

(cor(mydata$avginc, mydata$math_scr))
(cor(mydata$income, mydata$math_scr))


