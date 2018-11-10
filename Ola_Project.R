#Ola_dataset
#importing the dataset
library(readr)
data <- read_csv("F:/Anuj 3rd Year/Data Analytics/Project/Refined dataset/Refined Dataset (TRAIN)_Aditya.csv")
View(data)

#Sample Visualizations

# For Lead Sources
lead_source <- c(data$lead_source)

# Create a pie chart with defined heading and
# custom colors and labels
#pie(lead_source, main="Source Of Booking", col=rainbow(length(lead_source)),
#   labels=c("Andriod App","Iphone App","Windows App","Developer API","Mobile Website","Browser Website"))
#summary(lead_source)
# Try to visualize using Bar Plots
hist(lead_source, main="Source of Booking", xlab="Frequency",  
        ylab="Sources", names.arg=c("Android App","Iphone App","Windows App","Default API","Mobile Web","Desktop"), 
        border="red", density=c(10,20,30,40,50,60))

# Distribution through the spread

plot(lead_source, log="xy", pch=20, col="blue",
     main="Log-normal distribution",
     xlab="Value", ylab="Frequency")
#hist(lead_source)
#warnings()


# Mode of Advance
payment_source <- c(data$mode_of_advance)

# Create a pie chart with defined heading and
# custom colors and labels
#pie(lead_source, main="Source Of Booking", col=rainbow(length(lead_source)),
#   labels=c("Andriod App","Iphone App","Windows App","Developer API","Mobile Website","Browser Website"))
#summary(lead_source)
# Try to visualize using Bar Plots
hist(payment_source, main="Payment Source", xlab="Frequency",  
     ylab="Sources", names.arg=c("Ola Money","Cash","Cards","Jio Money","Corporate Booking"), 
     border="red", density=c(10,20,30,40,50,60))

# Distribution through the spread

plot(payment_source, log="xy", pch=20, col="blue",
     main="Payment Source Distribution",
     xlab="Values", ylab="Payment Source")
#hist(lead_source)
#warnings()

# Discount types
discount <- c(data$discount_type)

# Create a pie chart with defined heading and
# custom colors and labels
#pie(lead_source, main="Source Of Booking", col=rainbow(length(lead_source)),
#   labels=c("Andriod App","Iphone App","Windows App","Developer API","Mobile Website","Browser Website"))
#summary(lead_source)
# Try to visualize using Bar Plots
hist(discount, main="Discount type", xlab="",  
     ylab="Discount types", names.arg=c("Ola Money","Cash","Cards","Jio Money","Corporate Booking"), 
     border="red", density=c(10,20,30,40,50,60))

# Distribution through the spread

plot(discount, log="xy", pch=20, col="blue",
     main="Payment Source Distribution",
     xlab="Values", ylab="Discount types")
#hist(lead_source)
#warnings()


# Plotting Cities in India
# Load required libraries
library(ggmap)
library(ggplot2)
library(mapproj)
map(database= "world", regions  = "India", exact=T, col="grey80", fill=TRUE, projection="gilbert", orientation= c(90,0,90),main="Trips Cancelled in Cities" )
lat <- c(23.30, 28.38)
lon <- c(80, 77.12) # Lon and Lat for two cities Bhopal and Delhi
coord <- mapproject(lon, lat, proj="gilbert", orientation=c(90, 0, 90))
points(coord, pch=20, cex=1.2, col="red")
map

unique_cities <- unique(data$service_city)
map1 <- qmap(unique_cities[1], zoom = 7, maptype = 'hybrid')
map2 <- qmap(unique_cities[2], zoom = 7, maptype = 'hybrid')
map3 <- qmap(unique_cities[3], zoom = 7, maptype = 'hybrid')
map4 <- qmap(unique_cities[4], zoom = 7, maptype = 'hybrid')
map5 <- qmap(unique_cities[5], zoom = 7, maptype = 'hybrid')
map6 <- qmap(unique_cities[6], zoom = 7, maptype = 'hybrid')
map7 <- qmap(unique_cities[7], zoom = 7, maptype = 'hybrid')
map8 <- qmap(unique_cities[8], zoom = 7, maptype = 'hybrid')
map9 <- qmap(unique_cities[9], zoom = 7, maptype = 'hybrid')
map10 <- qmap(unique_cities[10], zoom = 7, maptype = 'hybrid')
map11 <- qmap(unique_cities[11], zoom = 7, maptype = 'hybrid')
map12 <- qmap(unique_cities[12], zoom = 7, maptype = 'hybrid')
map13 <- qmap(unique_cities[13], zoom = 7, maptype = 'hybrid')
map14 <- qmap(unique_cities[14], zoom = 7, maptype = 'hybrid')
map15 <- qmap(unique_cities[15], zoom = 7, maptype = 'hybrid')
map16 <- qmap(unique_cities[16], zoom = 7, maptype = 'hybrid')
map17 <- qmap(unique_cities[17], zoom = 7, maptype = 'hybrid')
map18 <- qmap(unique_cities[18], zoom = 7, maptype = 'hybrid')
map19 <- qmap(unique_cities[19], zoom = 7, maptype = 'hybrid')
map20 <- qmap(unique_cities[20], zoom = 7, maptype = 'hybrid')
#map21 <- qmap(unique_cities[21], zoom = 7, maptype = 'hybrid')
#map22 <- qmap(unique_cities[22], zoom = 7, maptype = 'hybrid')
#map23 <- qmap(unique_cities[23], zoom = 7, maptype = 'hybrid')
map1
map2
map3
map4
map5
map6
map7
map8
map9
map10
map11
map12
map13
map14
map15
map16
map17
map18
map19
map20

# Car Categories
unique_cars <- unique(data$car_category)
View(unique_cars)
segments <- c(as.factor(unique(data$car_category)))
barplot(segments, main="Car Categories", xlab="types",  
        ylab="No. of car Types", 
        border="blue", density=c(10,20,30,40,50))
pie(segments, main="Car Categories", col=rainbow(length(segments)),
    labels=c("micro","auto","compact","luxury_sedan","prime_play","kp","economy_sedan","economy_suv","cool_cab"))
    
dotchart(t(segments), color=c("red","blue","darkgreen"),
         main="Dotchart for Car Segments", cex=0.8)

#Cancelled reasons
unique_reasons_cancel <- unique(data$cancel_reason)
View(unique_reasons_cancel)
reasons <- c(as.factor(unique(data$cancel_reason)))
barplot(reasons, main="Cancelled Reasonss",  
        ylab="Frequency for a reason", 
        border="blue", density=c(10,20,30,40,50))



pie(reasons, main="Cancelled Reasons", col=rainbow(length(segments)),
    labels=c("stock_out","My reason is not listed","Driver denied duty","CANCEL_CUSTOMER_ISSUE",
             "auto_rickshaw_user_cancellation",
             "Expected a shorter wait time","my reason is not listed","Cab is not moving in my direction",
             "User cancellation","CANCEL_DRIVER_CAR_ISSUE","Changed my mind","stockout","unable_to_contact_driver",
             "Unable to contact driver","Auto delayed","Plan changed","auto_delayed"))
'''legend(1.5, 0.5, c("stock_out","My reason is not listed","Driver denied duty","CANCEL_CUSTOMER_ISSUE",
                   "auto_rickshaw_user_cancellation",
                   "Expected a shorter wait time","my reason is not listed","Cab is not moving in my direction",
                   "User cancellation","CANCEL_DRIVER_CAR_ISSUE","Changed my mind","stockout","unable_to_contact_driver",
                   "Unable to contact driver","Auto delayed","Plan changed","auto_delayed"), cex=0.8,fill=colors)
'''
dotchart(t(reasons), color=c("red","blue","darkgreen"),
         main="Dotchart for Cancelled reasons", cex=0.8)


# Cluster and Classification Models
#K-Means
K_means_lead_source<-kmeans(lead_source,5,trace=TRUE)
plot(lead_source , col=(K_means_lead_source$cluster+1), main=("5 Clusters for Application Source"))

#Decision Trees for Reasons and Cancel

tree_sample <- data.frame(data[1:8])
library(rpart)
fit <- rpart(tree_sample ~ reasons + lead_source + segments, method="class" ,
             control=rpart.control(minsplit=2, cp=0))
library(rattle)
library(rpart.plot)
library(RColorBrewer)
fancyRpartPlot(fit)

#Linear Regrression

# Payment Source and Discounts
plot(discount, type="o", col="blue", ylab="Discount vs   Payment_Source")
lines(payment_source, type="o", pch=22, lty=2, col="red")
title(main="Linear Regression Model", col.main="black", font.main=4)

#Segments and reasons
plot(segments, type="o", col="green", ylab="Segments vs  Reasons")
lines(reasons, type="o", pch=22, lty=2, col="orange")
title(main="Linear Regression Model", col.main="black", font.main=4)

#Cities and Reasons
cities <- c(as.factor(unique(data$service_city)))
plot(cities, type="o", col="red", ylab="Cities vs  Reasons")
lines(reasons, type="o", pch=22, lty=2, col="black")
title(main="Linear Regression Model", col.main="black", font.main=4)
