View(Fuel)
#This command allows R to read specific data automatically without assigning them.
attach(Fuel)
#Fuelcons = beta0+beta1*Temp+error
result=lm(Fuelcons~Temp)
#produce summary of linear regression
summary(result)
#confidence interval for explanatory(independent variable)
confint(result, level=.95)
#confidence interval for mean value from observations
predict(result , interval = 'confidence')
#confidence interval for prediction value from observations
predict(result, interval = 'prediction') 
#In order to find confidence interval for any desired value, you need to
#create a new data.frame with the desired value to predict
#Suppose you want to find confidence interval for mean value
#at the Temperature 30.
new.dat <- data.frame(Temp=30)
predict(result, newdata = new.dat, interval = 'confidence')
predict(result, newdata = new.dat, interval = 'prediction')
