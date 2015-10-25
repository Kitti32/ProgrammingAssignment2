## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  Matrix = NULL
  set = function(y){
    x <<- y
    Matrix <<- NULL
  }
  get = function() {
    x
  }
  setsolve = function(solve) {
    Matrix <<- solve
  }
  getsolve = function() {
    Matrix
  }
  list(set = set, get = get, setsolve = setsolve, getsolve=getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  Matrix <- x$getsolve()
  if(!is.null(Matrix)) {
    message("getting cached data")
    return(Matrix)
  }
  data <- x$get()
  Matrix <- solve(data, ...)
  x$setsolve(Matrix)
  Matrix
}
