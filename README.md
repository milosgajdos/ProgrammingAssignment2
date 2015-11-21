### Introduction

This repo provides a solution to 2nd programming assignment for R-programming course
offered by [Coursera](https://class.coursera.org/rprog-034). You can find the original
assignment on the following [link](https://class.coursera.org/rprog-034/wiki/Week_3)

### Assignment: Caching the Inverse of a Matrix

The repo contains one R script `cachematrix.R` which provides two functions

1.  `makeCacheMatrix`: This function accepts a matrix as an argument 
     and generates a special list object which provides various functions 
     to retrieve and modify the underlying matrix and its inverse matrix.

2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` retrieves its inverted matrix from the cache.

