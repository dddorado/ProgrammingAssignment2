## Two functions that cache an inverse of a matrix


## Creates matrix that can cache an inverse

makeCacheMatrix <- function(x = matrix()) {
        
        ## Initialization
        i <- NULL
        
        ## Set the matrix
        set <- function( matrix ) {
                 m <<- matrix
                 i <<- NULL
         }
        
        ## Get matrix
                get <- function() {
    	
        ## Return matrix
    	        m
         }
        
        ## Set inverse of matrix
        setInverse <- function(inverse) {
                i <<- inverse
        }
        
        ## Get inverse of matrix
        getInverse <- function() {
        
                ## Return the inverse property
                i
         }

        ## Return list of methods
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}


## Compute inverse of matrix returned by *makeCacheMatrix*

cacheSolve <- function(x, ...) {
        ## Return matrix that is inverse of 'x'
        m <- x$getInverse()
        
        ## Return the inverse if its set
        if( !is.null(m) ) {
                message("getting cached data")
                return(m)
        }
        
        ## Get matrix
        data <- x$get()

        ## Calculate inverse using matrix multiplication
        m <- solve(data) %*% data

        ## Set inverse
        x$setInverse(m)

        ## Return matrix
        m
        
        #ktnxbye
}

