data("mtcars")
View(mtcars)

x <- mtcars$wt
y <- mtcars$mpg

plot(x, y, main = "Weight explaining MPG", xlab = "Weight (1000 lbs)", ylab = "Miles Per Gallon")
abline(lm(y ~ x, data = mtcars), col = "blue")

cor(x, y)

LinearRegression_mpg <- lm(mpg ~ wt, data = mtcars)

unseen <- data.frame(wt = 4)
predict(LinearRegression_mpg, unseen)