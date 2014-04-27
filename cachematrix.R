## Forked Project of rdpeng
## For the purpose of completing Programming Assignment 2 - Peer Assessment
## ## ## ## ## ## ## ## ## ## ## ## ## ## 
## Completed by: Mugammad Ameen Jakoet
## Date: 27 April 2014
## Place: Cape Town, South Africa.

## makeCacheMatrix
# This function serves to provide the user with the ability to store
# matrices and their inverses into R to either be called back and used
# at a later stage, or to be saved over, once changed.

# FUNCTIONS:
###############
# (1) set - I/O: [matrix y];[none]
# (2) setinverse - I/O: [matrix inv];[none]
# (3) get - I/O: [none];[matrix x]
# (4) getinverse - I/O: [none];[matrix invers]
###############
makeCacheMatrix <- function(x = matrix()) 
{
    ## Initializing variables
    invers <- NULL
    
    ## MUTATORS (SETS)
    set <- function (y)
    { # Sets the matrix "X" with matrix "Y"
      # Resets Inverse of Matrix "X"
        x <<- y
        invers <<- NULL
    }
    
    setinverse <- function (inv)
    { # Sets Inverse of Matrix "X"
        invers <<- inv
    }
    
    ## ACCESSORS (GETS)
    get <- function ()
    { # Retrieves Matrix "X"
        x
    }
    
    getinverse <- function ()
    {# Retrieves Inverse of Matrix "X"
        invers
    }
    
    # Applies list of functions to the makeCacheMatrix function
    list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## cacheSolve:
# Arguments: [matrix x, other arguments linked to the argurments of solve(x)] see ?solve for details
# Outputs: [Inverse of matrix x]

# Function computes the inverse of the input matrix X. If the matrix inverse
# has already been solved, then it merely returns the inverse, otherwise
# calculates it from scratch.

cacheSolve <- function(x, ...) 
{ ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse ()                      # Gets inverse
    if (!is.null(inv)) {                        # but IF (it already exists)
        message ("Retrieving Cached Data")      # just returns the inverse
        return (inv)
    }
    data <- x$get()                             # ELSE (retrieves matrix)
    inv <- solve (data, ...)                    # and calculates the Inverse
    x$setinverse (inv)                          # which it then saves as the inverse
    inv                                         # and returns it as an output
}
