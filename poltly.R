library(readxl)
IInd <- read_excel("E:/MCA assignment1/IInd.xlsx", 
                   col_types = c("numeric", "text", "numeric", 
                                 "text", "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "text", "numeric", "numeric", 
                                 "numeric", "text", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric"))
View(IInd)

summary(IInd)
g<-aggregate(OS_INT~Year,IInd,FUN = max )
gg<-aggregate(OS_INT~Year,IInd,FUN = min )
ggg<-aggregate(OS_INT~Year,IInd,FUN = median )
gggg<-aggregate(OS_INT~Year,IInd,FUN = mean )


install.packages("plotly")
library(plotly)
Year<-g$Year
max1<-g$OS_INT
max1
min1<-gg$OS_INT
mean1<-gggg$OS_INT
mean1
median1<-ggg$OS_INT
data11<-data.frame(Year,max1,min1,mean1,median1)
p1<-plot_ly(data,x=~Year,y=~max1,type='bar',name='max'
            )%>%add_trace(y=~min1,name="min"
                          )%>%add_trace(y=~mean1,name="mean"
                                        )%>%add_trace(y=~median1,name='Median'
                                                      )%>%layout(yaxis=list(title='Count'),barmode='group')
(p1)
ggplotly(p1)
