f<- subset(diabetic_data, gender=="Female")
m<- subset(diabetic_data, gender=="Male")
fn<- nrow(f)
mn<- nror(m)
mn<- nrow(m)
x<-c(fn,mn)
labels<- c("Female","Male")
png(file= "gender.jpg")
pie(x,labels)
dev.off()