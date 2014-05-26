a <- makeCacheMatrix(matrix(1:16,4))
a$get()
a$getInverse()
a$get()
cacheSolve(a)
cacheSolve(a)
a$getInverse()
b = a$getInverse()
a$get() %*% b