# your code goes here
## Caching the Inverse of a Matrix

## Matrix inversion is usually a costly computation.
## There may be some benefit to caching the inverse of
## a matrix rather than compute it repeatedly.


makeCacheMatrix <- function(x=matrix()) {
  ## Creates a list of functions that
  ## can cache the inverse of a matrix.
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<-inverse
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}

cacheSolve <- function(x, ...) {
  ## Computes the inverse of the matrix returned
  ## by makeCacheMatrix(), unless the inverse has
  ## already been calculated, in which case
  ## it retrieves it from the cache.
  m <- x$getInverse()
  if ( ! is.null(m)) {
    print("getting cached data")
    return(m)
  }
  # The inverse is not yet calculated, so we calculate it
  data <- x$get()
  m <- solve(data)
  
  # Cache the inverse
  x$setinv(m)
  
  # Return it
  m
}