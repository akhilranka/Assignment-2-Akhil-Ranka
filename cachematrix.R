## It will find inverse from cache or by calculation.

## Write a short comment describing this function: This function provide details to cachesolve function
## and provide cache inv if required.

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function: This will caclulate inverse 
## and return inverse. It check whether inverse is calculated before and matrix is changed.

cacheSolve <- function(x, ...) {
inv <- x$getinv()
data <- x$get()
        if(!is.null(inv) && previous==data) {
                message("getting cached data")
                return(inv)
        }
        
        inv <- solve(data, ...)
        x$setinv(inv)
previous<-data
        inv      

  ## Return a matrix that is the inverse of 'x'
}
