#' HW3: Function factory
#'
#' In this exercise, we will write a function computing the k^{th} order statistics and a function computing the density of a mixture model.
#' Order Statistics Reference: https://en.wikipedia.org/wiki/Order_statistic.
#'
#' 1. Implement a function `kth_order(vec, k)` that takes as input a vector and returns its k^{th} order statistics. If `k` is not an index of the vector, the function should return `NA`.
#'    Use the `sort()` and `seq_along()` function to create this function.
## Do not modify this line!
kth_order<-function(vec, k){
	vec<-sort(vec)
	v<-seq_along(vec)
	if(is.na(vec[v[k]])) return(NA)
	else return(vec[v[k]])
}

#' 2. Implement a function `order_factory(k)` that takes as input an index `k` and returns a function that compute the k^{th} order statistics of a vector `vec` using `kth_order`. Don't forget to use `force()`.
## Do not modify this line!
order_factory<-function(k){
	force(k)
	function(vec){
		kth_order(vec,k)
	}
}


#' 3. Create a function `my_mixture(x, c1, mu1, sigma1, c1, mu1, sigma1)` that evaluates the probability density function `p(x) = c1 x N(x; mu1, sigma1) + c2 x N(x; mu2, sigma2)` at `x`. The sigma here is the standard deviation.
#'    You can assume that 0 <= c1 <= 1, 0 <= c2 <= 1, c1 + c2 = 1, sigma1 > 0, sigma2 > 0.
## Do not modify this line!
my_mixture<-function(x, c1, mu1, sigma1, c2, mu2, sigma2){
	v1<-dnorm(x, mean = mu1, sd = sigma1)
	v2<-dnorm(x, mean = mu2, sd = sigma2)
	return(c1*v1 + c2*v2)
}


#' 4. Implement a function `mixture_factory(c1, mu1, sigma1, c2, mu2, sigma2)`. This function makes a function that evaluates the probability density function `p(x) = c1 x N(x; mu1, sigma1) + c2 x N(x; mu2, sigma2)`. The sigma here is the standard deviation.
#'    You can assume that 0 <= c1 <= 1, 0 <= c2 <= 1, c1 + c2 = 1, sigma1 > 0, sigma2 > 0. Use the functions `force` and `dnorm`.
## Do not modify this line!
mixture_factory<-function(c1, mu1, sigma1, c2, mu2, sigma2){
	force(c(c1, mu1, sigma1, c2, mu2, sigma2))
	function(x){
		v1<-dnorm(x, mean = mu1, sd = sigma1)
		v2<-dnorm(x, mean = mu2, sd = sigma2)
		return(c1*v1 + c2*v2)
	}
}



