# HW1: tibble4
#
# 1. Consider the data frame `airquality`. Convert it into a tibble `t1`.
# 2. Calculate the total number of 'NA' for each variable and summarize it into a vector `v1`.
#    Make sure the vector has the same names as the column names of `t1`.
# 3. Omit all rows which have 'NA' values and assign it to `t2`.
# 4. Sort the new data frame `t2` by column Temp(ascending) and then by column Ozone(ascending). Assign it to `t3`.(hint: check the order function)

## Do not modify this line! ## Write your code for 1. after this line! ##
library(tibble)
t1=as_tibble(airquality)
t1
## Do not modify this line! ## Write your code for 2. after this line! ##
v1<-c()
for(i in 1:6){
	va<-t1[,i]
	count<-0
	for(j in 1:153){
		if(is.na(va[j,]==TRUE)){
			count<-count+1
		}
	}
	v1[i]<-count
}
names(v1)<-names(t1)
v1
## Do not modify this line! ## Write your code for 3. after this line! ##
t2<-na.omit(t1)
## Do not modify this line! ## Write your code for 4. after this line! ##
t3<-t2[order(t2$Temp,t2$Ozone),]
