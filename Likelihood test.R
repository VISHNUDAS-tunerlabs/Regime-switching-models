attach(Database)
set.seed(123)
install.packages("lmtest")
library(lmtest)
install.packages("cars")
library(cars)
install.packages("car")
library(car)
install.packages("nnet")
library(nnet)
install.packages("dplyr")
library(dplyr)
install.packages("stargazer")
library(stargazer)
fullmodel_1 <- lm(Returns ~ `Investor sentiment` + `Search Volume Index` + Volatility, data = Database)
summary(fullmodel_1)
reducedmodel_1 <- lm(Returns ~ `Investor sentiment` + `Search Volume Index`, data = Database) 
summary(reducedmodel_1)
lrtest(fullmodel_1, reducedmodel_1)
stargazer(fullmodel_1, reducedmodel_1, title = "Results", type = "text", align = TRUE)
fullmodel_2 <- lm(Volatility ~ `Investor sentiment` + `Search Volume Index` + Returns, data = Database)
summary(fullmodel_2)
reducedmodel_2 <- lm(Volatility ~ `Investor sentiment` + `Search Volume Index`, data = Database)
summary(reducedmodel_2)
lrtest(fullmodel_2, reducedmodel_2)
stargazer(fullmodel_2, reducedmodel_2, title = "Results", type = "text", align = TRUE)
