## we create a function called makCacheMatrix that would take Matrix as input and gives list as an output containing a function to set the value of a matrix, get the value of matrix,
## set the value of inverse and get the value of inverse


makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
  set <- function(y) {
          x <<- y
          m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## We create a second function called cachesolve - if inverse has already been calculated then it will return output from cache else it will compute
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if (!is.null(m)) {
          message("getting cached data")
          return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(i)
  m
}
