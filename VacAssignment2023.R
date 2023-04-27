setwd("c:/Users/ashwi/Downloads/")
library("readxl")

data  =  read_excel("Cellphone.xlsx", sheet = "Data")

dim(data)
str(data)
summary(data)
View(data)

attach(data)
library(ggplot2)

boxplot(AccountWeeks~Churn)

ggplot(data, aes(x = AccountWeeks)) + 
  geom_density(aes(fill = Churn), alpha = 0.3) + 
  scale_color_manual(values = c("#868686FF", "#EFC000FF")) + 
  scale_fill_manual(values = c("darkturquoise", "lightcoral")) + xlim(-30,250)

boxplot(DataUsage~Churn)

ggplot(data, aes(x = DataUsage)) + 
  geom_density(aes(fill = Churn), alpha = 0.3) + 
  scale_color_manual(values = c("#868686FF", "#EFC000FF")) + 
  scale_fill_manual(values = c("darkturquoise", "lightcoral")) + xlim(-1,5)

boxplot(DayMins~Churn)

ggplot(data, aes(x = DayMins)) + 
  geom_density(aes(fill = Churn), alpha = 0.3) + 
  scale_color_manual(values = c("#868686FF", "#EFC000FF")) + 
  scale_fill_manual(values = c("darkturquoise", "lightcoral")) + xlim(-10,400)


# For categorical features

ggplot(data, aes(x = CustServCalls, fill = Churn)) + 
  geom_bar(width = 0.25, alpha=0.5) + 
  scale_fill_manual(values = c('darkturquoise', 'lightcoral'))


ggplot(data, aes(x = ContractRenewal, fill = Churn)) + 
  geom_bar(width = 0.25, alpha=0.5) + 
  scale_fill_manual(values = c('darkturquoise', 'lightcoral'))


ggplot(data, aes(x = DataPlan, fill = Churn)) + 
  geom_bar(width = 0.25, alpha=0.5) + 
  scale_fill_manual(values = c('darkturquoise', 'lightcoral'))
