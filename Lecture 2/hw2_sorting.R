# HW2: Sorting
#
# In this exercise, we will write a function to sort the input vector.
#
# 1. Use a `for` loop to go over the `qsec` column in `mtcars` dataset and assign to integer `n1` the position of the smallest number.
#    Note: if there are multiple smallest numbers, find the first occurrence.
# 2. Write a function `min_position(vec)` to return the position of the first occurrence of the smallest number. You should not use the `min` or `which` functions.
# 3. Write a function `my_sort(vec)` to return a sorted vector using the `min_position` function and a `while` loop. You should not use the `sort` or `order` functions.
# 4. Apply the `my_sort` function to the `qsec` column in `mtcars` dataset and store the sorted vector in `vec1`

## Do not modify this line! ## Write your code for 1. after this line! ##
library(tibble)
t1<-as_tibble(mtcars)
v1<-t1$"qsec"
n1<-1
for(i in 2:length(v1)){
	if(v1[i]<v1[n1]){
		n1<-i
	}
}
n1
## Do not modify this line! ## Write your code for 2. after this line! ##
min_position<-function(vec){
	l<-length(vec)
	p<-1
	if(l==1) {return(1)}
	else{
		for(i in 2:l){
			if(vec[i]<vec[p]){
				p<-i
			}
		}
	}
	return(p)
}
## Do not modify this line! ## Write your code for 3. after this line! ##
my_sort<-function(vec){
	n<-0
	vec2<-c()
	while(n<length(vec)){
		i<-min_position(vec)
		vec2<-c(vec2,vec[i])
		vec[i]<-100000000
		n<-n+1
	}
	return(vec2)
}
my_sort(10:1)
## Do not modify this line! ## Write your code for 4. after this line! ##
vec1<-my_sort(v1)
