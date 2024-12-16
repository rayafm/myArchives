#set and get location
setwd("G:/Tugas-Proyek_Data-Mining")
getwd()

#read dataset
dataset <- read.csv("entrepreneurship_after-preprocessing.csv", sep = ";")
head(dataset)

#see correlation
cor(dataset$Women.Entrepreneurship.Index, dataset$Entrepreneurship.Index)
cor(dataset$Inflation.Rate, dataset$Entrepreneurship.Index)
cor(dataset$Female.Labor.Force, dataset$Entrepreneurship.Index)

#make scatter plot between Women Entrepreneurship Index and Entrepreneurship Index
scatter.smooth(x=dataset$Women.Entrepreneurship.Index, y=dataset$Entrepreneurship.Index, main="Entrepreneurship Index ~ Women Entrepreneurship Index")

#make model
linearMod <- lm(Entrepreneurship.Index ~ 
Women.Entrepreneurship.Index+Inflation.Rate+Female.Labor.Force, data = dataset)
summary(linearMod)
print(linearMod)