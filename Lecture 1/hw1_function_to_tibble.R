# HW1: data frames and tibbles
#
# 1. Convert the dataset `mtcars` to a tibble `t1`.
# 2. Create a tibble `t2` which contains all columns of `t1` with a miles per gallon higher than 18.
# 3. Create a tibble `t3` that contains all the values of `t2` truncated to the corresponding integer.
# 4. Copy `t3` into a tibble `t4` and merge its two columns 'vs' and 'am' by summing them, rename it 'vsam' and make sure it is `t4`'s first column.

## Do not modify this line! ## Write your code for 1. after this line! ##
library(tibble)
t1<-as_tibble(mtcars)
t1
## Do not modify this line! ## Write your code for 2. after this line! ##
t2<-t1[t1$mpg>18,]
t2
## Do not modify this line! ## Write your code for 3. after this line! ##
t3<-t2
for(i in 1:19){
	for(j in 1:11){
		t3[i,j]<-as.integer(t2[i,j])
		}
	}
t3
## Do not modify this line! ## Write your code for 4. after this line! ##
t4<-t3
t4$vsam<-t4$vs+t4$am
t4<-t4[,c(12,1:11)]

