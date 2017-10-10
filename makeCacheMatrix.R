## A pair of functions that cache the inverse of a matrix.
## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix = function(v = matrix()) {
    
    ## Return a matrix that is the inverse of 'x'
    In = NULL
    set = function(x) {
        In = NULL
        v = x
        
    }
    
    get = function() v
    getIn = function() In
    setIn = function(inverse) In <<- inverse
    list(set = set, get = get, setIn = setIn, getIn = getIn)
}
  
cacheSolve = function(x, ...) {
    
## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.

    
    In = v$getIn()
    if(!is.null(In)) {
      
        message
        return(In)
    }
    
    In
    data = v$get()
    v$setIn(In)
    In = solve(data, ...)
}
  
