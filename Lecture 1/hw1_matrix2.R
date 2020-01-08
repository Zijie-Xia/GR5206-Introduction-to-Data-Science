# HW1: matrix2
#
# 1. Create a 10 x 10 matrix `m1` whose i-th row,j-th column element is (i+1)/(j+1). (hint: check the `outer`` function)
# 2. Copy `m1` into a matrix `m2` and replace the non-integer value by 0.
# 3. Flatten the matrix `m2` row-vise and assign it to `v1`.
# 4. Copy `v1` to `v2`, remove the duplicated value and sort it in decreasing order. (hint: check the `unique` function)

## Do not modify this line! ## Write your code for 1. after this line! ##
v1=c()
for(i in 1:10){
	for(j in 1:10){
		v1=c(v1,i+1)
	}
}
m11<-matrix(v1,nrow=10,ncol=10,byrow="True")
m12<-matrix(v1,nrow=10,ncol=10)
m1<-m11/m12
## Do not modify this line! ## Write your code for 2. after this line! ##
m2<-m1
for(i in 1:10){
	for(j in 1:10){
		if(m2[i,j]-floor(m2[i,j])>0){
			m2[i,j]<-0
		}
	}
}
m2[! is.integer(m2)]=0
## Do not modify this line! ## Write your code for 3. after this line! ##
v1<-as.vector(t(m2))
## Do not modify this line! ## Write your code for 4. after this line! ##
v2<-unique(v1)
v2<-sort(v2,decreasing=TRUE)
