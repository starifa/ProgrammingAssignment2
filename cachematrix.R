## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverso <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverso <- function(inverso) inverso <<- inverso
        getinverso <- function() inverso
        list(set=set, get=get, setinverso=setinverso, getinverso=getinverso)
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        inverso <- x$getinverso()
        if(!is.null(inverso)) {
                message("Cleaning cache")
                return(inverso)
        }
        data <- x$get()
        inverso <- solve(data)
        x$setinverso(inverso)
        inverso
}

## Sample run:
x = rbind(c(1, -2), c(-2, 1))
m = makeCacheMatrix(x)
m$get()

## No cache in the first run
cacheSolve(m)

