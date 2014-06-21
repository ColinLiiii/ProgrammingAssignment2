## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmatrix <- function(reverse) m <<- reverse
    getmatrix <- function() m
    list(set = set, get = get,
         setreverse = setreverse,
         getreverse = getreverse)
}


## This function creates a special "matrix" object that can cache its inverse

cacheSolve <- function(x, ...) {
       m <- x$getreverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setreverse(m)
        m
}
