# HW2: loop2
#
# 1. Use a `for` loop to create a vector `x1` that stores the Displacement (`disp`) of the `mtcars` dataset, whose values are 160 or higher.
# 2. Use a `for` loop to create a vector `x2` that stores the Displacement (`disp`) of the `mtcars` dataset in order, until it observes a value strictly smaller than 160.(Do not include that value less than 160).
# 3. Do the above exercise no.2 again, but use a `while` loop instead, name the vector `x2_new`.
# 4. Use a `for` loop to create a vector `x3` that stores the Displacement (`disp`) of the `mtcars` dataset, making all the values greater than 160 to be exactly 160.

## Do not modify this line! ## Write your code for 1. after this line! ##
library(tibble)
t1<-as_tibble(mtcars)
t1
x1<-c()
for(i in 1:nrow(t1)){
	a<-t1$"disp"[i]
	if(a>=160){
		x1<-c(x1,a)
	}
}
## Do not modify this line! ## Write your code for 2. after this line! ##
x2<-c()
for(i in 1:nrow(t1)){
	a<-t1$"disp"[i]
	if(a>=160){
		x2<-c(x2,a)
	}
	else break
}
x2
## Do not modify this line! ## Write your code for 3. after this line! ##
x2_new<-c()
v1<-t1$"disp"
v1
i<-1
while(i<=length(v1)){
	if(v1[i]>=160){
		x2_new<-c(x2_new,v1[i])
		i=i+1
	}
	else break
}
x2_new
## Do not modify this line! ## Write your code for 4. after this line! ##
x3<-c()
for(i in 1:nrow(t1)){
	a<-t1$"disp"[i]
	if(a>160){
		x3<-c(x3,160)
	}
	else{
		x3<-c(x3,a)
	}
}
x3
