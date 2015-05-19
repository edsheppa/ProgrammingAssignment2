## Programing assignment 2: matrix inverse cache

## Wrap a matrix with finctionality to cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    
    list(
        set = function (m) { x  <<- m; inv <<- NULL },
        get = function () { x  },
        setinverse = function (i) { inv <<- i },
        getinverse = function () { inv }
    )
}


## Calculate and cache matrix inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if (is.null(inv)) {
        inv <- solve(x$get())
        x$setinverse(inv)
    }
    
    inv
}
