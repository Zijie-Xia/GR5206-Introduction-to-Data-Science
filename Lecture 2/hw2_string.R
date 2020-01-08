# HW2: string problems
#
# 1. Create a function `string1` that takes as input a string `x` consisting of letters and numbers, such as '12345abcde',
#    and splits each element, returning a character list. (Hint : Loop up the function `strsplit`)
# 2. Create a function `string2` returning a character vector instead of a list.
# 3. Create a function `string3` that takes as input a string `x` and two parameters `i` and `j`, selecting the ith and jth elements in the string and returning them as a character vector.
#    If i > j, or if i or j individually do not correspond to an element of the list, `string3` returns `NA`, if i = j, it returns the ith element, and returns a character vector composed of the ith and jth element otherwise.
# 4. Create a function `string4`, that takes as input a string `x` and two parameters `i` and `j` and returns the sub-string of x between the ith and jth elements included.
#    It should return `NA` if `i` and `j` do not correspond to any element of the list.
# 5. Create a function `string5`, that takes as input a string `x`, two parameters `i` and `j` and a logical parameter `decreasing`
#    that returns the reversed sub-string `decreasing` is True, and the substring when `decreasing` is False.
#    Example: `input(x = '12345abcde', i = 2, j = 7, decreasing = T)` should return 'ba5432'

## Do not modify this line! ## Write your code for 1. after this line! ##
string1<-function(x){
	strsplit(x,split="")
}
## Do not modify this line! ## Write your code for 2. after this line! ##
string2<-function(x){
	x<-strsplit(x,split="")
	unlist(x)
}

## Do not modify this line! ## Write your code for 3. after this line! ##
string3<-function(x,i,j){
	y<-unlist(strsplit(x,split=""))
	if((i>j)|i>length(y)|j>length(y)){
		NA
	}
	else if(i==j){
		y[i]
	}
	else{
		c(y[i],y[j])
	}
}
## Do not modify this line! ## Write your code for 4. after this line! ##
string4<-function(x,i,j){
	y<-unlist(strsplit(x,split=""))
	if(i>j|i>length(y)|j>length(y)) {return(NA)}
	else{
		return(substring(x,i,j))
	}
}
## Do not modify this line! ## Write your code for 5. after this line! ##
string5<-function(x,i,j,desc){
	y<-unlist(strsplit(x,split=""))
	if(i>j|i>length(y)|j>length(y)) {return(NA)}
	else{
		if(desc){return(paste(y[j:i],collapse=""))}
		else{return(paste(y[i:j],collapse=""))}
	}
}
