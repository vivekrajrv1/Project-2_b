getwd()

data = read.csv(file.choose())

head(data)

str(data)

data$Cylinder <- factor(data$Cylinder)

str(data)

head(data)

data$cyl4 <- ifelse(data$Cylinder == 4, 1, 0)
data$cyl6 <- ifelse(data$Cylinder == 6, 1, 0)
data$cyl8 <- ifelse(data$Cylinder == 8, 1, 0)

head(data)

dataNew <- data[-4]

head(dataNew)


dataNew <- data[,c(-11)]

head(dataNew)



model1 <- lm(Price ~ ., data = dataNew)

plot(dataNew)

summary(model1)

plot(model1)

#Eliminating Cruise

model2 <- lm(Price ~ Mileage + Make + Liter + Sound + Leather +
               cyl4 + cyl6, data = dataNew)
summary(model2)

plot(model2)

#Eliminating cyl6

model3 <- lm(Price ~ Mileage + Make + Liter + Sound + Leather +
               cyl4, data = dataNew)
summary(model3)

plot(model3)

#Eliminating Leather

model4 <- lm(Price ~ Mileage + Make + Liter + Sound +cyl4, data = dataNew)

summary(model4)

#Eliminating Sound

model5 <- lm(Price ~ Mileage + Make + Liter +cyl4, data = dataNew)

summary(model5)

step(lm(Price ~ Mileage + Make + Liter +cyl4, data = dataNew))
 
model6 <- lm(Price ~ Mileage + Make + Liter, data = dataNew)
summary(model6)

# Model5 is the best fit model as the R squared value decreases if we remove any
# of the variables.