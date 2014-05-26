makeVector <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(setmean) m <<- source(x)
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}