diabetes2<- subset(diabetic_data, diabetic_data$discharge_disposition_id!="11")
diabetes2<- subset(diabetes2, diabetes2$discharge_disposition_id!="13")
diabetes2<- subset(diabetes2, diabetes2$discharge_disposition_id!="14")
diabetes2<- subset(diabetes2, diabetes2$discharge_disposition_id!="19")
diabetes2<- subset(diabetes2, diabetes2$discharge_disposition_id!="20")
diabetes2<- subset(diabetes2, diabetes2$discharge_disposition_id!="21")
install.packages("sqldf")
library(sqldf)
diabetes3<- sqldf('SELECT * FROM diabetes2 GROUP BY patient_nbr')
View(diabetes3)

diabetes3[diabetes3$re == "NO", "readmitted"] <- "1"
diabetes3[diabetes3$re == "<30", "readmitted"] <- "2"
diabetes3[diabetes3$re == ">30", "readmitted"] <- "3”
