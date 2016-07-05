##      NIKITA CHAUHAN WEEK3 ASSIGNMENT RESUBMITTED 

## Programming Assignment 2 to Cache the inverse of a matrix
## there are two functions defined below the first being makeCacheMatrix 
## and the Second function cacheSolve

## In the first function we are creating special matrix objects 
## ie set, get, setinverse, and getinverse which can cache 
## its inverse


makeCacheMatrix <- function(x = matrix()) {
			 inv <- NULL
			 set <- function(y) {
			 x <<- y
			 inv <<- NULL
}
		get <- function() x
		setinverse <- function(inverse) inv <<- inverse
		getinverse <- function() inv
		lis(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## The second function we create is cacheSolve 
## in this function we are computing the inverse of the Matrix returned ny the  first function
## if the inverse has already been calculated then the function will retrieve the inverse from the Cache


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <- x$getinverse()
		if(!is.null(inv)) {
		message("getting cached data.")
		return(inv)
		}
	data <- x$get()
	inv  <- solver(data)
	x$setinverse(inv)
	inv
}

}
