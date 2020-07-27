## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## makeCacheMatrix- cretaes a special 'matrix' object that can cache its inverse.
## benefit to caching the inverse of a matrix rather than compute it repeatedly.
## Below are a pair of functions that are used to create a special object that 
## stores a matrix and caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inve <- NULL
  set <- function(y) {
    x <<- y
    inve <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inve <<- inverse    ## 
  getinverse <- function() inve
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}

## Write a short comment describing this function
## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
  inve <- x$getinverse()
  if (!is.null(inve)) {
    message("getting cached data")
    return(i)
  }
  dmax <- x$get()
  inve <- solve(dmax, ...)
  x$setinverse(inve)
 ## returns the inverse matrix.
  inve               
}
