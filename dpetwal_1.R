#Q1 Reading a file "Sales" from the set directory:
a<-read.csv("sales.csv")

#Q2 Producing summary stastistics of the data in Sales and specific columns
summary(a)
summary(a$Unit.Cost)
summary(a$Units.Sold)
mean(a$Unit.Price)

#Q3 Produce a graph
plot(a$Item.Type, a$Units.Sold, main='Sales Graph', xlab = 'Item Type', ylab = 'Units Sold', asp = 1, col= "blue")

#Q4 It works!