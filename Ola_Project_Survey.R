library(readr)
data2 <- read_csv("F:/Anuj 3rd Year/Data Analytics/Project/Refined dataset/Refined dataset (Test).csv")
View(data2)

#Sample Visualizations
#whether they use Ola
use_ola <- c(data2$`Do you use Ola?`)
hist(use_ola, main="Do they use Ola", xlab="Samples",  
     ylab="Whether they use Ola", names.arg=c("Yes","No" ,"Depends on Offers"), 
     border="red", density=c(10,20,30,40,50,60))

plot(use_ola, log="xy", pch=20, col="blue",
     main="distribution of Ola customers",
     xlab="Value", ylab="Frequency")

#Source of Booking
source_book <- c(data2$`Source of booking?`)
hist(source_book, main="Source of Booking", xlab="Frequency",  
     ylab="Sources", names.arg=c("Android App","Iphone App","Windows App"), 
     border="red", density=c(10,20,30,40,50,60))

plot(source_book, log="xy", pch=20, col="blue",
     main="Source of Bookings",
     xlab="Value", ylab="Sources")

pie(source_book, main="Source Of Booking", col=rainbow(length(lead_source)),
    labels=c("Andriod App","Iphone App","Windows App"))


#Reasons for cancelling the Ride
reasons_survey <- (data2$`Reasons to cancel the ride?`)
barplot(reasons, main="Cancelled Reasonss",  
        ylab="Frequency for a reason", 
        border="blue", density=c(10,20,30,40,50),col=rainbow(6))

#pie(reasons_survey, main="Cancelled reaons", col=rainbow(length(lead_source)))
#too clustered to display

# Cluster and Classification Models
#K-Means
K_means_source<-kmeans(source_book,3,trace=TRUE)
plot(source_book , col=(K_means_source$cluster+1), main=("3 Clusters for Application Source from Survey"))

K_means_cancel<-kmeans(reasons_survey,6,trace=TRUE)
plot(reasons_survey , col=(K_means_cancel$cluster+1), main=("6 Clusters for Cancelled Reasons"))

#Linear Regrression
# Application Source and Cancel reasons
plot(source_book, type="o", col="blue", ylab="Source Booking vs Cancelled reasons")
lines(reasons_survey, type="o", pch=22, lty=2, col="red")
title(main="Linear Regression Model for Test Model", col.main="black", font.main=4)
