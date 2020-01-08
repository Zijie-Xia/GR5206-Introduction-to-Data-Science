#' HW3: Map
#'
#' In this exercise, we will use the different `map` functions from the `purrr` package.
#' DO NOT use `while` loop in this exercise.
#'
#' 1. Load the `purrr` package. For each column in the `mtcars` data set, calculate the mean using `map`. Store the results in a list `m1`.
## Do not modify this line!
library(purrr)
df<-data.frame(mtcars)
m1<-map(df,mean)
		
		
#' 2. Do the same thing as above, but return a vector named `m2` using `map_dbl`.
## Do not modify this line!
m2<-map_dbl(df,mean)
m2<-unlist(m2)


#' 3. Calculate the mean once again, trimming the 10% maximal and minimal values using `map_dbl`. Save the result in a vector named `m3`.
## Do not modify this line!
m3<-map_dbl(df,function(x) mean(x,trim=0.1))
m3<-unlist(m3)

#' 4. Split `mtcars` by `cyl` into a list and calculate the number of rows for each element of the list using `split` and `map_int`. Store the result in a vector named `m4`.
#' Note: Do not change column names.
## Do not modify this line!

cyl<-df$cyl
m4<-map_int(split(data.frame(cyl),factor(cyl)),function(x) nrow(x))


