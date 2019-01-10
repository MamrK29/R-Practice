
#Saving the sample values in a vector named "s"
s=c(1.2,2.1,0.4,3.3,-2.1,4.0,-0.3,2.2,1.5,5.0)

#Checking total number of obs in "s"
length(s)


#median using the even and odd case formula (in the bottom of page 284)
median(s)


#median using the long formula 
quantile(s,0.5,type=4)

#1st Quartile
Q1=quantile(s,0.25,type=4)
Q1

#3rd Quartile
Q3=quantile(s,0.75,type=4)
Q3


IQR=Q3-Q1
IQR



#Built-in R function for drawing Boxplot
boxplot(s)






##########################################################
##### Calculating quantiles using graph               ####
##### For example, X ~ Exp(1) -> F(x) = 1 - exp(-x)   ####
##########################################################

### Even though a exponential variable can take value upto positive infinity
### But in this case 10 is big enough for our example
### That's why we took x as a sequence between 0 and 10
### To get even finer line, change the "by" value to 0.001 or 0.00001

x=seq(0,10,by=0.01)

#Calculating CDF for each of the x values
F_of_x=1-exp(-x)

#Ploting the CDF
plot(x, F_of_x)


####
#Calculating 75th percentile using the graph


#Putting a horizontal line at F_of_x = 0.075
abline(h=0.75)


#Putting a vertical line at x=1.6 (intial guess)
abline(v=1.6)

#too far! We need to pick a value smaller than 1.6

#Putting a vertical line at x=1.4
abline(v=1.4)


#This looks close enough! So Using the graph, 75th percentile for Exp(1) = 1.4 (approx.)


#Checking the built-in R funciton for calcuting quantiles.
qexp(0.75)
