## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## It sets the value of the matrix, gets teh value of the matrix,then sets
## and gets the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m 
  list (set = set, get = get, 
        setinverse = setinverse, 
        getinverse = getinverse)
}



## Write a short comment describing this function
  # checks if the inverse has been calculated
  # if yes, gets the inverse from the cache. Otherwise, it calculates
  # the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse
  if(!is.null(m)) {
    message("getting cached data")
  }
  data <- x$get()
  m <- inverse(data, ...)
  x$setmean(m)
  m <- solve
}
