income.data <- read.csv("~/income.data.csv")
view(income.data)
income.happiness.lm<-lm(happiness ~ income, data=income.data)
summary(income.happiness.lm)
new.income<-data.frame(income=c(2.6,1.9,2.4))
new.income
predict(income.happiness.lm, newdata = new.income)
