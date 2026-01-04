data(mtcars) 
head(mtcars) 
model <- lm(mpg ~ hp, data = mtcars) 
summary(model) 
plot( 
  mtcars$hp, 
  mtcars$mpg, 
  main = "Simple Linear Regression", 
  xlab = "Horsepower", 
  ylab = "MPG" 
) 
abline(model, col = "red") 
new_data <- data.frame(hp = 150) 
predicted_mpg <- predict(model, new_data) 
cat("Predicted MPG for 150 HP:", predicted_mpg, "\n")