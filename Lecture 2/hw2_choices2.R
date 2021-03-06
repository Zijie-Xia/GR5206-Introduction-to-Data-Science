# HW2: choices2
#
# 1. Create a function `is_prime` that checks if an integer is a prime number or not,
# `is_prime` takes one parameter named `num`, return `True` if `num` is a prime number, return `False` if it is composite.
# 2. Use a `for` loop to create an integer vector `x`, containing the all prime numbers from 1 to 100.
# 3. How many prime numbers are greater than 30 but less than 80? Save the answer into scalar `a`.
# 4. Calculate the sum of the 2nd, 4th, 6th... prime number below 100. Save the anser into scalar `b`.

## Do not modify this line! ## Write your code for 1. after this line! ##
is_prime<-function(num){
	if(num<=1) return(FALSE)
	else if(num==2) return(TRUE)
	for(i in 2:(num-1)){
		if(num%%i==0){
			return(FALSE)
		}
	}
	return(TRUE)
}
## Do not modify this line! ## Write your code for 2. after this line! ##
x<-c()
for(i in 1:100){
	if(is_prime(i)){
		x<-c(x,i)
	}
}
x
## Do not modify this line! ## Write your code for 3. after this line! ##
a<-0L
for(i in 31:79){
	if(is_prime(i)) a<-a+1L
}
## Do not modify this line! ## Write your code for 4. after this line! ##
b<-0
i<-1
c<-0
while(i<100){
	if(is_prime(i)){
		c<-c+1
		if(c%%2==0){
			b<-b+i
		}
	}
	i<-i+1
}
