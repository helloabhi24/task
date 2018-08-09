library(party)
library(partykit)
library(readxl)

data <- read_excel("~/data.xlsx", col_types = c("numeric", 
                                                "numeric", "numeric", "numeric", "numeric", 
                                                "numeric", "numeric"))
View(data)
str(data)
data$type<-as.factor(data$type)
pre<-sample(2,nrow(data),replace = TRUE,prob = c(0.7,0.3))
train<-data[pre==1,]
train<-data[pre==2,]
p<-train$technical
aa<-summary(p)
aa1<-aa[c(1,3,4,6)]
aa1<-as.vector(aa1)
barplot(aa1,names.arg = c("Min","Median","Mean","Max"),col = c("red","green","yellow","brown"),main ="Technical",border = "pink" ,VADeaths)
warnings()
