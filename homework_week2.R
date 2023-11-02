# Problem 2 - A

attach(FreshDetergent)
#Demand = beta0+beta1*PriceDif+error
result=lm(Demand ~ PriceDif)
summary(result)

# Problem 2 - B
# estimate for Beta0 = 7.81409
# estimate for Beta1 = 2.66521

# Problem 2 - C
# MSE = SSE/(n-2) = 0.3166
# SSE = 0.3166*28 = 8.8648
# s^2 = MSE = 0.3166
# s = sqrt(0.3166) = 0.5626722

# Problem 2 - D
# t(Beta1) = 10.31
# Pr(>|t|) = 4.88e-11
# With Alpha = 0.05, we have to reject the Null Hypothesis, since p<Alpha.
# Therefore our model fits the data.

# Problem 2 - E
confint(result, level = 0.95)
# CI for Beta1 = (2.135702; 3.194727)

# Problem 2 - F
# t(Beta0) = 97.82;
# Pr(>|t|) = 2e-16
# With Alpha = 0.05, we have to reject the Null Hypothesis, since p<Alpha. 
# Therefore, our model fits the data.

# Problem 2 - G
new.dat <- data.frame(PriceDif=0.1)
predict(result, newdata = new.dat, interval = 'confidence', level = 0.95)
predict(result, newdata = new.dat, interval = 'prediction', level = 0.95)

# Problem 2 - H
# simple coefficient of determination = r^2 = 0.7915
# r^2 = (SST-SSE)/SST = SSR/SST = 0.7915
# Sum of Squares of Error = SSE = 8.8648
# Sum of Squares of Regression = SSR =  F * (SSE/(n-2)) = 106.3 * (8.8648/28) = 335.7549
# Total Variation = SST = SSE + SSR = 8.8648 + 335.7549 = 344.6197
# This means that 0.7915 of variance of the dependent variable is explained by the model.

# Problem 2 - I
# F = 106.3
# P-value = 4.881e-11
# Since p-value is smaller than Alpha = 0.01, we have to reject the Null Hypothesis.
# Therefore the model fits the data.

# Problem 2 - J
t_rejection_point <- qt(0.025, 28, lower.tail = FALSE)
f_rejection_point <- qf(0.05, 1, 28, lower.tail = FALSE)
t_rej_sqrd <- t_rejection_point * t_rejection_point
t_rej_sqrd
f_rejection_point