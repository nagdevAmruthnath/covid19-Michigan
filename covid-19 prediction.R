# read data from a csv file
data = read.csv("covid19.csv", header = T)

# create samples from the data
samples = sample(1:16, size = 16*0.8)

# build an exponential regression model
model = lm(log(Cases) ~ Day + I(Day^2) , data = data[samples,])

# look at the summary of the model
summary(model)

# predict for new data
prediction = exp(predict(model, data.frame(Day = 1:21)))

# put actual and predictions into a data frame
d2 = data.frame(Day = 1:21, floor(prediction), actual = c(data$Cases, rep(NA, 5)))
d2

#Plot the data
ggplot(d2[,1:2], aes(x = Day, y = prediction)) +
  geom_point(colour = "blue") + 
  geom_point(na.omit(d2[,-2]), colour = "red", mapping = aes(x = Day, y = actual)) +
  ggtitle("COVID-19 Prediction for Michigan: Red - Actual & Blue - Prediction") +
  theme(plot.title = element_text(hjust = 0.5))
