## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL 
        #Aqui hacemos el SET de la matriz. 
 set <- function(matrix) {
         x <<- matrix
         m <<- NULL
 }
   #Llamamos a la matriz y la retornamos.
 matriz <- function() {
         x
 } 
        #Hacemos la funcion para la inversa de la matriz que teniamos.
 matrizInversa <- function(inverse) {
         m <<- inverse
 }
        #Calculamos la inversa de la matriz.
 retornarInversa <- function() {
         m
 }
        #Devolvemos una lista con los metodos usados
 list(set= set, matriz = matriz,
      matrizInversa = matrizInversa, 
      retornarInversa = retornarInversa)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()   
    
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
       
  m <- solve(data, ...)
        
  x$setinverse(m)
  m

}
