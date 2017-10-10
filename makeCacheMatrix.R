makeCacheMatrix = function(v = matrix()) {
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
  