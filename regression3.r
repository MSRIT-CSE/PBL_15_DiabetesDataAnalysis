relation<- lm(diabetes5$gender~diabetes5$A1Cresult)
print(relation)
png(file="linear model.png")
plot(diabetes5$A1Cresult,diabetes5$gender,col="red",main="Gender and HbA1c result regression",abline(lm(diabetes5$gender~diabetes5$A1Cresult)),cex=1.3,pch=16,xlab="HbA1c result",ylab="Gender")
dev.off()