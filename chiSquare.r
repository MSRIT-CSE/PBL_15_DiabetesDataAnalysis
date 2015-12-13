library("MASS")
diabetes.data = table(diabetic_data$gender, diabetic_data$change)
print(diabetes.data)
print(chisq.test(diabetes.data))
