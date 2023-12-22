plot(1,3)
plot(c(1,8),c(3,10))
plot(c(1,2,3,4,5),c(3,7,8,9,12))

x<-c(1,2,3,4,5)
y<-c(3,7,8,9,12)
plot(x,y)

plot(1:10)
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis")
plot(1:10,main="My Graph", xlab="The x-axis", ylab="The y axis", col="red")
#25 types pch
plot(1:10, pch=25, cex=2)
plot(1:10, pch=25, cex=0.5)
plot(1:10, pch=20, cex=2, col="blue")
#line plotting
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis", col="green",type="l", lwd=2)

plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis", col="red",type="l", lwd=0.5)
#line type 0 to 6
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis", col="green",type="l", lwd=2,lty= 3)

plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis", col="green",type="l", lwd=2,lty= 6)
#to display more than one lines
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)
plot(line1, type ="l", col = "blue")
lines(line2,type ="l",col ="red")

#scatterplot
x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x,y,main="Observation of Cars", xlab="Car age",ylab="Car speed")

