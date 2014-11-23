## Program Assignment 2 - Teague
#Cache the matrix being solved
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
    }
  get <- function() { x }
  setsolve <- function(solve) { m <<- solve }
  getsolve <- function() { m }
  
  list(get = get, 
       setsolve = setsolve,
       getsolve = getsolve)
}

## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  m <- x$getsolve()               
  if(!is.null(m)) 
    {             
      message("getting cached data")  
      return(m)
    }
  matrix <- x$get()
  m <- solve(matrix)
  x$setsolve(m)
  m 
}
