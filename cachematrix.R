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
    
    list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
