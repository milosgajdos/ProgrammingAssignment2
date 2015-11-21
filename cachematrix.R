# makeCacheMatrix accepts a matrix as an argument and generates a list object
# which provides various functions to retrieve and modify the underlying matrix
# and its inverse matrix
makeCacheMatrix <- function(x = matrix()) {
        # inverse matrix
        inv <- NULL
        # Initialize the underlying matrix object, NULLs its inverse cache
        # If the matrix hasn't changed we won't modify the underlying matrix
        set <- function(y = matrix()) {
                # only change the underlying matrix IF new matrix is not the same
                if (!(dim(x) == dim(y) && all(x == y))) {
                        x <<- y
                        inv <<- NULL
                }
        }
        # returns underlying matrix
        get <- function() x
        # sets matrix's inverse cache
        setinv <- function(invMatrix = matrix()) inv <<- invMatrix
        # returns inverse cache value
        getinv <- function() inv
        # returns matrix object
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}

# cacheSolve accepts a special list object that provides get, set, setinv and getinv
# function objects which allow to calculat an inverse matrix of passed in matrix
# object or returns a cached data if there is any.
cacheSolve <- function(x = list(), ...) {
        # retrieve cached inverse matrix
        inv <- x$getinv()
        # check if the cache exists and if the matrix hasn't changed
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        # read in matrix
        data <- x$get()
        # calculate inverse matrix
        inv <- solve(data)
        # set inverse cache value
        x$setinv(inv)
        # return inverse matrix
        inv
}